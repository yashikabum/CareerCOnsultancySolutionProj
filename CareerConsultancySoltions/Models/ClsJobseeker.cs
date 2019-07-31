using System;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace CareerConsultancySoltions.Models
{
    public class ClsJobseeker
    {
        //USER LOGIN DETAILS    
        private string user_id;

        public string UserId
        {
            get { return user_id; }
            set { user_id = value; }
        }

        private string first_name;

        public string FirstName
        {
            get { return first_name; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new Exception("First name can not be blank");
                }
                else
                {
                    first_name = value;
                }
            }
        }

        private string last_name;

        public string LastName
        {
            get { return last_name; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new Exception("Last name can not be blank");
                }
                else
                {
                    last_name = value;
                }
            }
        }

        private string user_type;

        public string UserType
        {
            get { return user_type; }
            set { user_type = value; }
        }

        private string email_id;

        public string EmailId
        {
            get { return email_id; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new Exception("Email Id is necessary");
                }
                else
                {
                    email_id = value;
                }

            }
        }

        private string user_name;

        public string UserName
        {
            get { return user_name; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new Exception("User name can not be blank");
                }
                else
                {
                    user_name = value;
                }

            }
        }

        private string password;

        public string Password
        {
            get { return password; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new Exception("Password can not be blank");
                }
                else
                {
                    user_name = value;
                }


                password = value;
            }
        }

        private string profile_id;

        //BASIC PROFILE DETAILS 

        public string Profile_Id
        {
            get { return profile_id; }
            set { profile_id = value; }
        }

        private string date_of_birth;

        public string Date_Of_Birth
        {
            get { return date_of_birth; }
            set { date_of_birth = value; }
        }

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

        private string state;

        public string State
        {
            get { return state; }
            set { state = value; }
        }

        private string pincode;

        public string Pincode
        {
            get { return pincode; }
            set { pincode = value; }
        }

        private string mobile_number;

        public string Mobile_Number
        {
            get { return mobile_number; }
            set { mobile_number = value; }
        }

        private string gender;

        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }

        private string created_on;

        public string Created_On
        {
            get { return created_on; }
            set { created_on = value; }
        }

        private int job_id;

        public int Job_Id
        {
            get { return job_id; }
            set { job_id = value; }
        }

        private string company_name;

        public string Company_Name
        {
            get { return company_name; }
            set { company_name = value; }
        }

        private string postion;

        public string Position
        {
            get { return postion; }
            set { postion = value; }
        }

        private string salary;

        public string Salary
        {
            get { return salary; }
            set { salary = value; }
        }

        private string industry;

        public string Industry
        {
            get { return industry; }
            set { industry = value; }
        }

        private string specialization;

        public string Specialization
        {
            get { return specialization; }
            set { specialization = value; }
        }

        private string experience_year;

        public string Experience_Year
        {
            get { return experience_year; }
            set { experience_year = value; }
        }


        private string education_id;

        public string Education_Id
        {
            get { return education_id; }
            set { education_id = value; }
        }

        private string education_name;

        public string Education_Name
        {
            get { return education_name; }
            set { education_name = value; }
        }

        private string board;

        public string Board
        {
            get { return board; }
            set { board = value; }
        }

        private string year_of_passing;

        public string Year_Of_Passing
        {
            get { return year_of_passing; }
            set { year_of_passing = value; }
        }

        private string percentage;

        public string Percentage
        {
            get { return percentage; }
            set { percentage = value; }
        }

        private string institution_name;

        public string Institution_name
        {
            get { return institution_name; }
            set { institution_name = value; }
        }

        private string stream;

        public string Stream
        {
            get { return stream; }
            set { stream = value; }
        }

        private int skill_id;

        public int Skill_Id
        {
            get { return skill_id; }
            set { skill_id = value; }
        }

        private int skills;

        public int Skills
        {
            get { return skills; }
            set { skills = value; }
        }

        private int experience_months;

        public int Experience_Months
        {
            get { return experience_months; }
            set { experience_months = value; }
        }

        private int applied_job_id;

        public int Applied_Job_Id
        {
            get { return applied_job_id; }
            set { applied_job_id = value; }
        }

        private string cover_letter;

        public string Cover_Letter
        {
            get { return cover_letter; }
            set { cover_letter = value; }
        }

        private int resume_id;

        public int Resume_Id
        {
            get { return resume_id; }
            set { resume_id = value; }
        }

        private string file_name;

        public string File_Name
        {
            get { return file_name; }
            set { file_name = value; }
        }

        private string file_data;

        public string File_Data
        {
            get { return file_data; }
            set { file_data = value; }
        }








    }
}
