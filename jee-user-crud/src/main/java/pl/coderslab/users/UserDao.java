package pl.coderslab.users;

import org.mindrot.jbcrypt.BCrypt;
import pl.coderslab.utils.DbUtil;

import java.sql.*;

public class UserDao {

    private static final String CREATE_USER_QUERY = "insert into users(username, email, password) values (?, ?, ?)";
    private static final String SELECT_USER_QUERY = "select * from users";
    private static final String UPDATE_USER_QUERY = "update users set username = ?, email = ?, password = ? where id = ?";
    private static final String SELECTID_USER_QUERY = "select * from users where id = ?";
    private static final String DELETE_USER_QUERY = "delete from users where id = ?";

    public String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public User[] findAll() {
        try (Connection conn = DbUtil.getConnection()) {
            User[] findAllUsers = new User[0];
            PreparedStatement preparedStatement2 = conn.prepareStatement(SELECT_USER_QUERY);
            ResultSet resultSet = preparedStatement2.executeQuery();

            while (resultSet.next()) {
                User users = new User();
                users.setId(resultSet.getInt("id"));
                users.setEmail(resultSet.getString("email"));
                users.setUserName(resultSet.getString("username"));
                users.setPassword(resultSet.getString("password"));
                findAllUsers = DbUtil.addToArray(users, findAllUsers);
            }
            return findAllUsers;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void update(User user) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement preparedStatement = conn.prepareStatement(UPDATE_USER_QUERY);
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, this.hashPassword(user.getPassword()));
            preparedStatement.setInt(4, user.getId());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void delete(int userId) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement statement = conn.prepareStatement(DELETE_USER_QUERY);
            statement.setInt(1, userId);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public User read(int userId) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement preparedStatement = conn.prepareStatement(SELECTID_USER_QUERY);
            preparedStatement.setInt(1, userId);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setEmail(resultSet.getString("email"));
                user.setUserName(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public User create(User user) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement statement =
                    conn.prepareStatement(CREATE_USER_QUERY, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, user.getUserName());
            statement.setString(2, user.getEmail());
            statement.setString(3, hashPassword(user.getPassword()));
            statement.executeUpdate();

            ResultSet resultSet = statement.getGeneratedKeys();
            if (resultSet.next()) {
                user.setId(resultSet.getInt(1));
                System.err.println(user);
            }
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
