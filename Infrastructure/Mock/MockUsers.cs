using Core.Mock;
using Core.Models;
using Core.Utils;

namespace Infrastructure.Mock
{
    public class MockUsers : IMockUsers
    {

        public List<User> GetMockUsers()
        {

            List<User> users = new();

            User user1 = new()
            {
                Id = 1,
                Email = "user1@email.com",
                Name = "Test",
                Password = CryptoUtils.Encrypt("123456")
            };
            User user2 = new()
            {
                Id = 2,
                Email = "user2@email.com",
                Name = "Test 2",
                Password = CryptoUtils.Encrypt("654321")
            };

            users.Add(user1);
            users.Add(user2);

            return users;
        }

    }
}
