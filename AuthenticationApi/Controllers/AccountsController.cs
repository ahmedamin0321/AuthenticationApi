using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Http;
using System.Web.Http.Cors;

namespace AuthenticationApi.Controllers
{
    [EnableCors(origins: "http://localhost", headers: "*", methods: "*")]
    public class AccountsController : ApiController
    {
        AuthenticationApiDbEntities db = new AuthenticationApiDbEntities();
        public string EncryptData(string value)
        {
            MD5 m = MD5.Create();
            byte[] b = m.ComputeHash(Encoding.Default.GetBytes(value));
            StringBuilder s = new StringBuilder();
            for (int i = 0; i < b.Length; i++)
            {
                s.Append(b[i].ToString("X3"));
            }
            return s.ToString();
        }
        [HttpGet]
        [Route("api/Accounts/Login")]
        public IHttpActionResult Login(string email, string password)
        {
            password = EncryptData(password);
            var getuser = db.Users.FirstOrDefault(u => u.Email == email && u.Password == password);
            if (getuser != null)
            {
                return Json(getuser);
            }
            return Json(false);
        }
    }
}
