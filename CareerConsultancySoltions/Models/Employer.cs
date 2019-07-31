using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareerConsultancySoltions.Models
{
    public class Employer
    {
        //LOGIN DETAILS
        private string employer_id;

        public string Employer_Id
        {
            get { return employer_id; }
            set { employer_id = value; }
        }

        private string employer_name;

        public string Employer_Name
        {
            get { return employer_name; }
            set { employer_name = value; }
        }

        private string email_id;

        public string Email_Id
        {
            get { return email_id; }
            set { email_id = value; }
        }

        private string user_name;

        public string UserName
        {
            get { return user_name; }
            set { user_name = value; }
        }

        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        //PROFILE DETAILS

        private string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }

        private string city;

        public string City
        {
            get { return city; }
            set { city = value; }
        }

        private string headquater;

        public string Headquater
        {
            get { return headquater; }
            set { headquater = value; }
        }

        private string branches;

        public string Branches
        {
            get { return branches; }
            set { branches = value; }
        }

        private string contact_person_name;

        public string Contact_Person_Name
        {
            get { return contact_person_name; }
            set { contact_person_name = value; }
        }

        private int contact_id;

        public int Contact_Id
        {
            get { return contact_id; }
            set { contact_id = value; }
        }

        private string contact_email_id;

        public string Contact_Email_Id
        {
            get { return contact_email_id; }
            set { contact_email_id = value; }
        }

        private string contact_phone_no;

        public string Contact_Phone_No
        {
            get { return contact_phone_no; }
            set { contact_phone_no = value; }
        }






    }
}
