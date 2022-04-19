"""organicFoodStore URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from organicApp import views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.home, name='home'),
    path('admincategory', views.admincategory),
    path('updatecategory', views.updatecategory),
    path('deletecategory', views.deletecategory),
    path('adminsubcategory', views.adminsubcategory),
    path('updatesubcategory', views.updatesubcategory),
    path('deletesubcategory', views.deletesubcategory),
    path('adminbrand', views.adminbrand),
    path('adminproduct', views.adminproduct),
    path('adminnewpurchase', views.adminnewpurchase),
    path('adminpurchaseproduct', views.adminpurchaseproduct),
    path('getsub', views.getsub),
    path('getproduct', views.getproduct),
    path('adminviewpurchases', views.adminviewpurchases),
    path('adminviewpurchasedetails', views.adminviewpurchasedetails),
    path('adminorders', views.adminorders),
    path('adminviewstaffs', views.adminviewstaffs),
    path('adminblockstaff', views.adminblockstaff),
    path('deleteproduct', views.deleteproduct),
    path('updatebrand', views.updatebrand),
    path('deletebrand', views.deletebrand),
    path('staffreg', views.staffreg, name='staffreg'),
    path('customerreg', views.customerreg, name='customerreg'),
    path('login/', views.login, name='login'),
    path('adminHome', views.adminHome, name='adminHome'),
    path('customerhome', views.customerHome, name='customerhome'),
    path('customerviewproduct', views.customerviewproduct,
         name='customerviewproduct'),
    path('customercart', views.customercart, name='customercart'),
    path('customerorders', views.customerorders, name='customerorders'),
    path('payment', views.payment, name='payment'),
    path('removefromcart', views.removefromcart, name='removefromcart'),
    path('customerallproducts', views.customerallproducts,
         name='customerallproducts'),
    path('customerreview', views.customerreview, name='customerreview'),
    path('staffHome', views.staffHome, name='staffhome'),
    path('stafforders', views.stafforders, name='stafforders'),
    path('staffproduct', views.staffproduct, name='staffproduct'),
    path('staffgetsub', views.staffgetsub, name='staffgetsub'),
    path('staffnewpurchase', views.staffnewpurchase),
    path('staffpurchaseproduct', views.staffpurchaseproduct),
    path('staffviewpurchases', views.staffviewpurchases),
    path('staffviewpurchasedetails', views.staffviewpurchasedetails),
]
