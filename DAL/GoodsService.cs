using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class GoodsService
    {
        /// <summary>
        /// 显示所有商品信息
        /// </summary>
        /// <returns></returns>
        public static List<Good> SelectAll()
        {
            using(ZYL1Entities db=new ZYL1Entities())
            {
                return db.Goods.ToList();
            } 
        }

        /// <summary>
        /// 根据类型查询商品信息
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public static List<Good> SelectType(string type)
        {
            using(ZYL1Entities db=new ZYL1Entities())
            {
                return db.Goods
                    .Where(a => a.Type == type)
                    .ToList();
            }
        }

        /// <summary>
        /// 根据页面查询
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public static List<Good> SelectPage(int pageIndex,int pageSize)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Goods
                    .OrderBy(a=>a.GoodsId)//根据id排序：分页显示的必要条件
                    .Skip((pageIndex-1)*pageSize)//跳过当前页之前的所有数据
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
                return db.Goods.Count();//统计记录的数量
            }
        }


        /// <summary>
        /// 根据商品id查询
        /// </summary>
        /// <param name="goodsId"></param>
        /// <returns></returns>
        public static Good SelectGoodsId(int goodsId)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Goods
                    .Where(a => a.GoodsId == goodsId)
                    .FirstOrDefault();
            }
        }

        /// <summary>
        /// 根据商品id删除商品信息
        /// </summary>
        /// <param name="goodsid"></param>
        /// <returns></returns>
        public static int Delete(int goodsid)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                var info = db.Goods
                    .Where(a => a.GoodsId == goodsid)
                    .FirstOrDefault();
                if (info != null)
                {
                    db.Goods.Remove(info);
                    return db.SaveChanges();
                }
                return 0;
            }
        }

        /// <summary>
        /// 添加商品
        /// </summary>
        /// <param name="info"></param>
        /// <returns></returns>
        public static int Insert(Good info)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {  
                db.Goods.Add(info);
                var r = db.SaveChanges();
                if (r > 0)
                {
                    return r;
                }
                return 0;
            }
        }

        /// <summary>
        /// 根据标题模糊查询
        /// </summary>
        /// <param name="tit">标题</param>
        /// <returns></returns>
        public static List<Good> GetArticlesByTitle(string tit)
        {
            using (ZYL1Entities db = new ZYL1Entities())
            {
                return db.Goods.Where(u => u.GoodsName.Contains(tit)).ToList();
            }
        }               
    }
}
