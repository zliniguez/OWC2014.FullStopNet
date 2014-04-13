﻿using MetroBlooms.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using umbraco;
using MetroBlooms.Extensions;
using MetroBlooms.ViewModels.Sections;

namespace MetroBlooms.ViewModels.Home
{
    public class HomeViewModel : UmbracoView
    {
        public string MainContent { get; set; }
        public UmbracoImage Image { get; set; }
        public List<BaseSection> Sections { get; set; }

        public HomeViewModel()
        {
            var currentNode = uQuery.GetCurrentNode();
            this.MainContent = currentNode.GetProperty<string>("mainContent");
            this.Image = currentNode.GetImage("image");
            this.Sections = this.FetchSections(currentNode);
        }
    }
}