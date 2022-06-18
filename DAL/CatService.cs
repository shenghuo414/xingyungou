using Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class CatService
    {
        public static List<Cat> SelectAll()
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Cats
                    .Include(a => a.Good)
                    .Include(b => b.Consumer1)
                    .ToList();
            }
        }


        /// <summary>
        /// 根据用户名查询
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static List<Cat> SelectAll(string name)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Cats
                    .Include(a => a.Good)
                    .Include(b => b.Consumer1)
                    .Where(p => p.Consumer1.Name == name)
                    .ToList();
            }
        }

        public static Cat Selectid(int id)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Cats
                    .Include(a => a.Good)
                    .Include(b => b.Consumer1)
                    .Where(p => p.Good.GoodsId == id)
                    .FirstOrDefault();
            }
        }

        /// <summary>
        /// 加入购物车
        /// </summary>
        /// <param name="info"></param>
        /// <returns></returns>
        public static int Insert(Cat info)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                db.Cats.Add(info);
                var r = db.SaveChanges();
                if (r > 0)
                {
                    return r;
                }
                return 0;
            }
        }

        /// <summary>
        /// 根据页面查询
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public static List<Cat> SelectPage(int pageIndex, int pageSize)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Cats
                    .OrderBy(a => a.CartID)//根据id排序：分页显示的必要条件
                    .Skip((pageIndex - 1) * pageSize)//跳过当前页之前的所有数据
                    .Take(pageSize)//获取对应数量的数据
                    .Include(b => b.Consumer1)
                    .Include(c => c.Good)
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
                return db.Cats.Count();//统计记录的数量
            }
        }

        /// <summary>
        /// 根据用户名查询数量
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static int SelectNameCount(string name)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Cats
                    .Include(a => a.Consumer1)
                    .Where(b => b.Consumer1.Name == name)
                    .Count();//统计记录的数量
            }
        }

        /// <summary>
        /// 根据购物车id删除
        /// </summary>
        /// <param name="carid"></param>
        /// <returns></returns>
        public static int Detele(int carid)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                var info = db.Cats
                    .Where(a => a.CartID == carid)
                    .FirstOrDefault();
                db.Cats.Remove(info);
                return db.SaveChanges();
            }
        }

        /// <summary>
        /// 根据用户名删除数据
        /// </summary>
        /// <param name="info"></param>
        /// <returns></returns>
        public static int detele2(string name)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                var info = db.Cats
                    .Include(a=>a.Consumer1)
                     .Where(b => b.Consumer1.Name == name)
                     .FirstOrDefault();
                db.Cats.Remove(info);
                return db.SaveChanges();
            }
            
        }
    }
}
