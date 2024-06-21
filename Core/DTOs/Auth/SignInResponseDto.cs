using Core.Models;
using System.ComponentModel.DataAnnotations;

namespace Core.Dtos.Auth
{
    public class SignInResponseDto
    {
        [Required]
        public User User { get; set; } = null!;
        [Required]
        public TokenDto Token { get; set; } = null!;
    }
}
