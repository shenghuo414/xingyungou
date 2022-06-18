using DAL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class AdminManager
    {
        public static int Login(string num, string passWord)
        {
            //1 根据账号查询信息
            var info = AdminService.Select(num);
            if (info == null)
            {
                return 1;
            }
            //2 根据返回的信息判断密码是否正确
            if (!info.PassWord.Equals(passWord))
            {
                return 2;
            }
            return 0;
        }

        public static int Updata(string num, string passWord)
        {
            return AdminService.Updata(num, passWord);
        }

        public static Admin Get(string num)
        {
            return AdminService.Select(num);
        }
    }
}
