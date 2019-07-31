using System.ComponentModel.DataAnnotations;
namespace BAL
{
    public class UserDetails
    {
        [Required(ErrorMessage = "Field can't be empty")]
        [DataType(DataType.EmailAddress, ErrorMessage = "E-mail is not valid")]
        [DisplayFormat(ConvertEmptyStringToNull = true)]
        [Display(Name = "")]
        [RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$")]
        public string EmailId { get; set; }

        [Required]
        [StringLength(10, ErrorMessage = "The password must be at least 6 characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "")]
        public string Password { get; set; }
    }
}