import 'package:darl_dispatch/LandingPageManagers/accountant_landing_page_manager.dart';
import 'package:darl_dispatch/LandingPageManagers/admin_landing_page_manager.dart';
import 'package:darl_dispatch/LandingPageManagers/driver_landing_manager.dart';
import 'package:darl_dispatch/Screens/Admin/reg_new_user.dart';
import 'package:darl_dispatch/Screens/Admin/Loads/assign_load_from_pick_drop.dart';
import 'package:darl_dispatch/Screens/Admin/Loads/assign_load_to_driver.dart';
import 'package:darl_dispatch/Screens/Admin/Loads/edit_reg_loads.dart';
import 'package:darl_dispatch/Screens/Admin/Loads/registered_pick_drop.dart';
import 'package:darl_dispatch/Screens/Vehicles/edit_vehicle.dart';
import 'package:darl_dispatch/Screens/Vehicles/reg_new_vehicle.dart';
import 'package:darl_dispatch/Screens/Authentication/forgot_pass_confirm_tel.dart';
import 'package:darl_dispatch/Screens/Authentication/forgot_pass_enter_email.dart';
import 'package:darl_dispatch/Screens/Authentication/reset_pass_final.dart';
import 'package:darl_dispatch/Screens/UsersPages/activeloads_main.dart';
import 'package:darl_dispatch/Screens/Admin/Loads/add_drop_pickup.dart';
import 'package:darl_dispatch/Screens/UsersPages/allDispatchers.dart';
import 'package:darl_dispatch/Screens/UsersPages/company_users_screen.dart';
import 'package:darl_dispatch/Screens/UsersPages/delivered_loads_preview.dart';
import 'package:darl_dispatch/Screens/UsersPages/deliveredloads_main.dart';
import 'package:darl_dispatch/Screens/UsersPages/drivers_on_trip_screen.dart';
import 'package:darl_dispatch/Screens/Authentication/edit_profile.dart';
import 'package:darl_dispatch/Screens/Despatcher/despatcher_home_page.dart';
import 'package:darl_dispatch/LandingPageManagers/dispatcher_landing_page_manager.dart';
import 'package:darl_dispatch/Screens/Admin/Loads/loads_assigned_preview.dart';
import 'package:darl_dispatch/Screens/UsersPages/loads_assigned_main.dart';
import 'package:darl_dispatch/Screens/UsersPages/nonAssignLoadsPreview.dart';
import 'package:darl_dispatch/Screens/UsersPages/non_assigned_loads_main.dart';
import 'package:darl_dispatch/Screens/UsersPages/payout_screen.dart';
import 'package:darl_dispatch/Screens/Admin/admin_manage_load_screen.dart';
import 'package:darl_dispatch/Screens/UsersPages/load_details_preview.dart';
import 'package:darl_dispatch/Screens/Admin/Loads/preview_reg_loads.dart';
import 'package:darl_dispatch/Screens/Admin/Loads/registered_loads_main.dart';
import 'package:darl_dispatch/Screens/Admin/Loads/admin_registered_loads_preview.dart';
import 'package:darl_dispatch/Screens/UsersPages/update_name.dart';
import 'package:darl_dispatch/Screens/clientProfilePage.dart';
import 'package:darl_dispatch/Screens/initial_dashboard.dart';
import 'package:darl_dispatch/Screens/Authentication/login_page.dart';
import 'package:darl_dispatch/Screens/Admin/Loads/register_new_load.dart';
import 'package:darl_dispatch/Screens/UsersPages/report.dart';
import 'package:darl_dispatch/Screens/Authentication/sign_up_page.dart';
import 'package:darl_dispatch/Screens/success_screen.dart';
import 'package:darl_dispatch/Screens/Vehicles/reg_and_assign_vehicle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screens/Drivers/allDrivers.dart';
import '../Screens/Vehicles/availabe_vehicles.dart';
import '../Screens/Drivers/dr_loadDelivered_preview.dart';
import '../Screens/Drivers/driver_edit_profile.dart';
import '../Screens/Drivers/driver_settings.dart';
import '../Screens/Authentication/settings.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/general_user_dashboard':
      return MaterialPageRoute(builder: (_) => const DespatcherHomePage());
    case '/dispatcher_landingPage_manager':
      return MaterialPageRoute(builder: (_) => const DispatcherLandingPageManager());
    case '/driver_landing_manager':
      return MaterialPageRoute(builder: (_) => const DriverLandingManager());
    case '/admin_landing_manager':
      return MaterialPageRoute(builder: (_) => const AdminLandingPageManager());
    case '/accountant_landing_manager':
      return MaterialPageRoute(builder: (_) => const AccountantLandingPageManager());
    case '/initial_dashboard':
      return MaterialPageRoute(builder: (_) => const InitialDashboard());
    case '/loadsDetailPreview':
      return MaterialPageRoute(builder: (_) => const LoadDetailsPreview());
    case '/registered_loads_Preview':
      return MaterialPageRoute(builder: (_) => const RegisteredLoadsPreview());
    case '/previewRegLoads':
      return MaterialPageRoute(builder: (_) => const PreviewLoadsToBeRegistered());
    case '/RegisteredLoadsMain':
      return MaterialPageRoute(builder: (_) => const RegisteredLoadsMain());


    case '/updateName':
      return MaterialPageRoute(builder: (_) => const UpdateName());
    case '/editProfile':
      return MaterialPageRoute(builder: (_) => const EditProfile());
    case '/settings':
      return MaterialPageRoute(builder: (_) => const Settings());

    case '/login_page':
      return MaterialPageRoute(builder: (_) => const LoginPage());
    case '/forgotPassTel':
      return MaterialPageRoute(builder: (_) => const ForgotPassConfirmTel());
    case '/forgotPassEmail':
      return MaterialPageRoute(builder: (_) => const ForgetPassEnterEmail());
    case '/resetPassFinal':
      return MaterialPageRoute(builder: (_) => const ResetPassFinal());
    case '/addDropPickup':
      return MaterialPageRoute(builder: (_) => const AddDropPickup());

    case '/sign_up_page':
      return MaterialPageRoute(builder: (_) => const SignUpPage());

    case '/company_users':
      return MaterialPageRoute(builder: (_) => const CompanyUsers());

    case '/vehicles':
      return MaterialPageRoute(builder: (_) => const Vehicles());

    case '/success_screen':
      return MaterialPageRoute(builder: (_) => const SuccessScreen());

    case '/register_load':
      return MaterialPageRoute(builder: (_) => const RegisterLoad());
    case '/driversOnTrip':
      return MaterialPageRoute(builder: (_) => const DriversOnTrip());

    case '/adminManageLoad':
      return MaterialPageRoute(builder: (_) => const AdminManageLoad());

    case '/load_details':
      return MaterialPageRoute(builder: (_) => const LoadDetailsPreview());

    case '/payout':
      return MaterialPageRoute(builder: (_) => const PayOut());

    case '/drivers_on_trip':
      return MaterialPageRoute(builder: (_) => const DriversOnTrip());

      case '/report':
      return MaterialPageRoute(builder: (_) => const Report());

    case '/clientProfilePage':
      return MaterialPageRoute(builder: (_) => const ClientProfilePage(staffInfo: {},));

    case '/loadsAssignedPreview':
      return MaterialPageRoute(builder: (_) => const LoadsAssignedPreview());
    case '/deliveredLoadsMain':
      return MaterialPageRoute(builder: (_) => const DeliveredLoadsMain());

    case '/driverLoadDeliveredPreview':
      return MaterialPageRoute(builder: (_) => const DriverLoadDeliveredPreview());

    case '/activeLoadsMain':
      return MaterialPageRoute(builder: (_) => const ActiveLoadsMain());

    case '/nonAssignedLoadsPreview':
      return MaterialPageRoute(builder: (_) => const NonAssignLoadsPreview());

    case '/nonAssignedLoadsMain':
      return MaterialPageRoute(builder: (_) => const NonAssignedLoadsMain());
    case '/editVehicle':
      return MaterialPageRoute(builder: (_) => const EditVehicle());
    case '/availableVehicles':
      return MaterialPageRoute(builder: (_) => const AvailableVehicles());
    case '/editRegLoads':
      return MaterialPageRoute(builder: (_) => const EditRegisteredLoads());
    case '/assignloadsToDriver':
      return MaterialPageRoute(builder: (_) => AssignLoadToDriver());

    case '/assignloadsToFromPickUp':
      return MaterialPageRoute(builder: (_) => AssignLoadFromPickDrop());


    case '/allDispatcher':
      return MaterialPageRoute(builder: (_) => const AllDispatcher());

    case '/driverEdithProfile':
      return MaterialPageRoute(builder: (_) => const DriverEditProfile());

    case '/driverSettings':
      return MaterialPageRoute(builder: (_) => const DriverSettings());

    case '/deliveredLoadsPreview':
      return MaterialPageRoute(builder: (_) => const DeliveredLoadsPreview());

    case '/allDrivers':
      return MaterialPageRoute(builder: (_) => const AllDrivers());
    case '/assignedLoadsMain':
      return MaterialPageRoute(builder: (_) => const AssingedLoadsMain());
    case '/regNewUser':
      return MaterialPageRoute(builder: (_) => const RegisterNewUser());
    case '/regNewVehicle':
      return MaterialPageRoute(builder: (_) => const RegisterNewVehicle());
    case '/registeredPickDrop':
      return MaterialPageRoute(builder: (_) => const RegisteredPickDrop());

    default:
      return MaterialPageRoute(builder: (_) => Container());
  }
}