using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Consumer1Service
    {
        /// <summary>
        /// 显示所有信息
        /// </summary>
        /// <returns></returns>
        public static List<Consumer1> SelectAll()
        {
            using(ZYL1Entities db=new ZYL1Entities())
            {
                return db.Consumer1
                    .ToList();
            }
        }

        /// <summary>
        /// 根据用户名查询信息
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static List<Consumer1> SelName(string name)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Consumer1
                    .Where(a => a.Name == name)
                    .ToList();
            }
        }

        public static Consumer1 GetName(string name)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Consumer1
                    .Where(a => a.Name == name)
                    .FirstOrDefault();
            }
        }

        /// <summary>
        /// 根据页面查询
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public static List<Consumer1> SelectPage(int pageIndex, int pageSize)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Consumer1
                    .OrderBy(a => a.ConsumerId)//根据id排序：分页显示的必要条件
                    .Skip((pageIndex - 1) * pageSize)//跳过当前页之前的所有数据
                    .Take(pageSize)//获取对应数量的数据
                    .ToList();
            }
        }

        /// <summary>
        /// 查询数量
        /// </summary>
        /// <returns></returns>
        public static int SelectCount()
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Consumer1.Count();//统计记录的数量
            }
        }

        /// <summary>
        /// 根据姓名查询用户是否存在
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static Consumer1 SelectName(string name)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Consumer1
                         .Where(a=>a.Name==name)
                         .FirstOrDefault();
            }
        }

        /// <summary>
        /// 根据手机号也就是用户名查询
        /// </summary>
        /// <param name="phone"></param>
        /// <returns></returns>
        public static Consumer1 SelectPhone(string phone)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Consumer1
                         .Where(a => a.Phone == phone)
                         .FirstOrDefault();
            }
        }

        /// <summary>
        /// 根据id删除
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static int Delete(int id)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                var info = db.Consumer1
                    .Where(a => a.ConsumerId == id)
                    .FirstOrDefault();
                if (info != null)
                {
                    db.Consumer1.Remove(info);
                    return db.SaveChanges();
                }
                return 0;
            }
        }


        /// <summary>
        /// 添加用户
        /// </summary>
        /// <param name="info"></param>
        /// <returns></returns>
        public static int Insert(Consumer1 info)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                db.Consumer1.Add(info);
                var r=db.SaveChanges();            
                if (r > 0)
                {
                    return r;
                }
                return 0;
               
            }
        }

        /// <summary>
        /// 根据用户姓名修改信息
        /// </summary>
        /// <param name="name"></param>
        /// <param name="phone"></param>
        /// <param name="money"></param>
        /// <param name="address1"></param>
        /// <param name="address2"></param>
        /// <returns></returns>
        public static int Updata(string name, string phone, string address1, string address2)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                var info = db.Consumer1
                    .Where(a => a.Name == name)
                    .FirstOrDefault();
                if (info != null)
                {
                    info.Phone = phone;
                    info.Address1 = address1;
                    info.Address2 = address2;
                    return db.SaveChanges();
                }
                return 0;
            }
        }

        /// <summary>
        /// 根据姓名修改头像
        /// </summary>
        /// <param name="name"></param>
        /// <param name="portrait"></param>
        /// <returns></returns>
        public static int UpdataTX(string name, string portrait)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                var info = db.Consumer1
                    .Where(a => a.Name == name)
                    .FirstOrDefault();
                if (info != null)
                {
                    info.Portrait = portrait;
                    return db.SaveChanges();
                }
                return 0;
            }
        }

        /// <summary>
        /// 充值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="money"></param>
        /// <returns></returns>
        public static int UpdataMoney(string name, int money)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                var info = db.Consumer1
                    .Where(a => a.Name == name)
                    .FirstOrDefault();
                if (info != null)
                {
                    info.Money = money;
                    return db.SaveChanges();
                }
                return 0;
            }
        }
        /// <summary>
        /// 根据用户id查询
        /// </summary>
        /// <param name="consumerId"></param>
        /// <returns></returns>
        public static Consumer1 SelectConsumerId(int consumerId)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Consumer1
                    .Where(a => a.ConsumerId == consumerId)
                    .FirstOrDefault();
            }
        }

        /// <summary>
        /// 根据标题模糊查询
        /// </summary>
        /// <param name="tit">标题</param>
        /// <returns></returns>
        public static List<Consumer1> GetArticlesByTitle(string tit)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Consumer1.Where(u => u.Name.Contains(tit)).ToList();
            }
        }
    }
}
