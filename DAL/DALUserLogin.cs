using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BAL;
using System.Configuration;
using System.Data.SqlClient;

namespace DAL
{
    public class DALUserLogin
    {
        public bool CheckCredentials(BAL.UserDetails userdetails)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["CareerCnString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("ValidateUser", cn);
            //cmd.CommandText = "ValidateUser";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@emailid", userdetails.EmailId);
            cmd.Parameters.AddWithValue("@password", userdetails.Password);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            bool status = false;
            if (dr.HasRows)
            {
                status = true;
            }
            else
            {
                status = false;
            }
            cn.Close();
            return status;


        }

        public bool ChangePassword(BAL.UserDetails userdetails)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["CareerCnString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("UpdatePassword", cn);
            //cmd.CommandText = "ValidateUser";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@emailid", userdetails.EmailId);
            cmd.Parameters.AddWithValue("@password", userdetails.Password);
            cn.Open();
            int rows = cmd.ExecuteNonQuery();
            bool status = false;
            if (rows >= 1)
            {
                status = true;
            }
            else
            {
                status = false;
            }
            cn.Close();
            return status;
        }

    }
}