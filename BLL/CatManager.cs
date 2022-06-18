using DAL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class CatManager
    {
        public static List<Cat> SelectAll()
        {
            return CatService.SelectAll();
        }

        public static List<Cat> SelectAll(string name)
        {
            return CatService.SelectAll(name);
        }

        public static int Add(Cat info)
        {
            return CatService.Insert(info);
        }

        public static Cat Selectid(int id)
        {
            return CatService.Selectid(id);
        }

        public static List<Cat> SelectPage(int pageIndex, int pageSize)
        {
            return CatService.SelectPage(pageIndex, pageSize);
        }

        public static int SelectCount()
        {
            return CatService.SelectCount();
        }

        public static int Detele(int carid)
        {
            return CatService.Detele(carid);
        }

        public static int SelectNameCount(string name)
        {
            return CatService.SelectNameCount(name);
        }

        public static int detele2(string name)
        {
            return CatService.detele2(name);
        }
    }
}
