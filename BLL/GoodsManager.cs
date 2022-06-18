using DAL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class GoodsManager
    {
        public static List<Good> GetAll()
        {
            return GoodsService.SelectAll();
        }

        public static List<Good> GetType(string type)
        {
            return GoodsService.SelectType(type);
        }

        public static List<Good> GetPage(int pageIndex, int pageSize)
        {
            return GoodsService.SelectPage(pageIndex, pageSize);
        }

        public static int GetCount()
        {
            return GoodsService.SelectCount(); 
        }

        public static int Delete(int goodsid)
        {
            return GoodsService.Delete(goodsid);
        }

        public static int Add(Good info)
        {
            return GoodsService.Insert(info); 
        }

        public static Good SelectGoodsId(int goodsId)
        {
            return GoodsService.SelectGoodsId(goodsId);
        }

        //模糊查询
        public static List<Good> GetArticlesByTitle(string tit)
        {
            return GoodsService.GetArticlesByTitle(tit);
        }
    }
}
