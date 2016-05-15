using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP035539_FYP.Class_structure
{
    public class Resource
    {
        string resource_id, type, library_id, description, location, access_type;
        public string ResourceID
        {
            get { return resource_id; }
            set { resource_id = value; }
        }
        public string Type
        {
            get { return type; }
            set { type = value; }
        }
        public string LibraryID
        {
            get { return library_id; }
            set { library_id = value; }
        }
        public string Description
        {
            get { return description; }
            set { description = value; }
        }
        public string Location
        {
            get { return location; }
            set { location = value; }
        }
        public string AccessType
        {
            get { return access_type; }
            set { access_type = value; }
        }

    }
}