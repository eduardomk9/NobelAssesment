using Core.Business;
using Core.Dtos.Auth;
using Core.Mock;
using Core.Models;
using Core.Services;
using Core.Utils;

namespace Application.Business
{
    public class AuthBusiness : IAuthBusiness
    {

        private readonly IAuthService _authService;
        private readonly IMockUsers _mockUsers;

        public AuthBusiness(IAuthService authService, IMockUsers mockUsers)
        {
            _authService = authService;
            _mockUsers = mockUsers;
        }
        public SignInResponseDto SignIn(SignInDto model)
        {
            try
            {
                List<User> users = new();
                User user = new();


                //TODO IF MOCK TRUE USE MOCK TO QUERY, ELSE USE ORM Repository layer to query
                if (true)
                {
                        user = _mockUsers.GetMockUsers().Where(x => x.Email == model.Mail).FirstOrDefault() 
                        ?? throw new Exception("Invalid User");
                }

                    bool valid = false;
                    if (user.Password != null && CryptoUtils.Decrypt(user.Password) == model.Password)
                    {
                        valid = true;
                    }
                
                if (valid)
                {
                    TokenDto token = _authService.GenerateJwtToken(model.Mail);

                    SignInResponseDto signInResponseDto = new() { 
                        User = user,
                        Token = token
                    };
                    return signInResponseDto;
                }
                throw new Exception("AuthBusiness | SignInAsync | Invalid email or password!");
            }
            catch (Exception ex)
            {
                throw new Exception($"AuthBusiness | SignInAsync | {ex.Message}");
            }
        }
    }
}