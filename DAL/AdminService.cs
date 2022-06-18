using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class AdminService
    {
        /// <summary>
        /// 根据用户名查询信息
        /// </summary>
        /// <param name="num"></param>
        /// <returns></returns>
        public static Admin Select(string num)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Admins
                    .Where(p => p.Num == num)
                    .FirstOrDefault();
            }
        }

        /// <summary>
        /// 根据用户名修改密码
        /// </summary>
        /// <param name="num"></param>
        /// <param name="passWord"></param>
        /// <returns></returns>
        public static int Updata(string num, string passWord)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                var info = db.Admins
                    .Where(a => a.Num == num)
                    .FirstOrDefault();
                if (info != null)
                {
                    info.PassWord = passWord;
                    return db.SaveChanges();
                }
                return 0;
            }
        }
    }
}
