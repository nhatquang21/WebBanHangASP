#pragma checksum "E:\WebApp\WebApp\Areas\Admin\Views\Product\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "f07e4ec3b591b1c8e47b95c30f2a79b55cbb771c"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Product_Index), @"mvc.1.0.view", @"/Areas/Admin/Views/Product/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "E:\WebApp\WebApp\Areas\Admin\Views\Product\_ViewImports.cshtml"
using WebApp;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"f07e4ec3b591b1c8e47b95c30f2a79b55cbb771c", @"/Areas/Admin/Views/Product/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"853796b14635d9ab72453d1dba68b65128a790e4", @"/Areas/Admin/Views/Product/_ViewImports.cshtml")]
    #nullable restore
    public class Areas_Admin_Views_Product_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IList<WebApp.Data.Product>>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("name", "~/Views/Shared/Partial/_AdminProductItem.cshtml", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("name", "~/Views/Shared/Partial/_Paging.cshtml", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "E:\WebApp\WebApp\Areas\Admin\Views\Product\Index.cshtml"
  
    ViewData["Title"] = "Quản lý sản phẩm";
    Layout = "_AdminLayout";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n\r\n<div>\r\n    <h1>");
#nullable restore
#line 11 "E:\WebApp\WebApp\Areas\Admin\Views\Product\Index.cshtml"
   Write(ViewData["Title"]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h1>\r\n      <button style=\"margin-bottom: 15px\" type=\"button\" class=\"btn btn-success\" ><a  style=\"color:white;\"");
            BeginWriteAttribute("href", "href=\"", 271, "\"", 309, 1);
#nullable restore
#line 12 "E:\WebApp\WebApp\Areas\Admin\Views\Product\Index.cshtml"
WriteAttributeValue("", 277, Url.Action("Create", "Product"), 277, 32, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(@">Tạo sản phẩm mới</a></button>
    <table style=""margin: 0 auto; width: 800px; border: 1px solid #343a40; border-collapse: collapse;font-size: 18px;"">

    <thead>
      <tr>
        <th style="" background-color: #087f5b; color: #fff;  width: 26%;  border: 1px solid #343a40; padding: 16px 24px; text-align: left;"">   Tên sản phẩm </th>
        <th  style="" background-color: #087f5b; color: #fff;  width: 25%;  border: 1px solid #343a40; padding: 16px 24px; text-align: left;"">  Mô tả</th>
        <th  style="" background-color: #087f5b; color: #fff;  width: 25%;  border: 1px solid #343a40; padding: 16px 24px; text-align: left;"">  Category</th>
        <th  style="" background-color: #087f5b; color: #fff;  width: 25%;  border: 1px solid #343a40; padding: 16px 24px; text-align: left;"">  Khuyến mãi</th>
        <th  style="" background-color: #087f5b; color: #fff;  width: 25%;  border: 1px solid #343a40; padding: 16px 24px; text-align: left;"">  Giá</th>
         <th  style="" background-color: #087f5b; color:");
            WriteLiteral(" #fff;  width: 25%;  border: 1px solid #343a40; padding: 16px 24px; text-align: left;\">  Action</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n     \r\n");
#nullable restore
#line 27 "E:\WebApp\WebApp\Areas\Admin\Views\Product\Index.cshtml"
              for(int i = 0; i< Model.Count; i++)
                {
                   
                    

#line default
#line hidden
#nullable disable
            WriteLiteral("                       <tr>\r\n                           \r\n                            \r\n                            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("partial", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "f07e4ec3b591b1c8e47b95c30f2a79b55cbb771c6222", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Name = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
#nullable restore
#line 34 "E:\WebApp\WebApp\Areas\Admin\Views\Product\Index.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Model = Model[i];

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("model", __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Model, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("       \r\n                        </tr>\r\n");
#nullable restore
#line 36 "E:\WebApp\WebApp\Areas\Admin\Views\Product\Index.cshtml"
                }    

#line default
#line hidden
#nullable disable
            WriteLiteral("      \r\n      \r\n      \r\n    </tbody>\r\n  </table>\r\n  <div class=\"cleaner\"></div>\r\n");
#nullable restore
#line 43 "E:\WebApp\WebApp\Areas\Admin\Views\Product\Index.cshtml"
    

    Func<int?,string> generateUrl = (int? _pagenumber)  => {
        return Url.ActionLink("Index", null, new {page = _pagenumber});
    };

    var datapaging = new {
        currentPage = ViewBag.pageNumber,
        countPages  = ViewBag.totalPages,
        generateUrl =  generateUrl
    };


#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("partial", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "f07e4ec3b591b1c8e47b95c30f2a79b55cbb771c8577", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Name = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
#nullable restore
#line 56 "E:\WebApp\WebApp\Areas\Admin\Views\Product\Index.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Model = datapaging;

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("model", __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Model, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(" \r\n\r\n</div>\r\n\r\n\r\n");
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IList<WebApp.Data.Product>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591