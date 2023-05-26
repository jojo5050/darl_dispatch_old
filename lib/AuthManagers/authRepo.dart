
import 'package:darl_dispatch/AuthManagers/api_services.dart';
import 'package:dio/dio.dart';

class AuthRepo with ApiServices{

  Future<Response?> register(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("create_user.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> login(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("login.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> updateUserInfo(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("update_user.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> getSingleUserInfo(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("user_info.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> resetPassWithEmail(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("forgot_password_1.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> resetPassWithTel(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("forgot_password_2.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> resetPassFinal(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("forgot_password_3.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> registerLoad(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/register_load.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> addPickup(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/add_pickup.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> addDrop(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/add_drop.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> fetchAllRegLoads() async {
    Response? response = await apiGetRequests("admin/registered_load.php");

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> getStaffs() async {
    Response? response = await apiGetRequests("admin/registered_staff.php");

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> getAllDispatchers() async {
    Response? response = await apiGetRequests("admin/registered_Dispatchers.php");

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> getAllAssignedLoads() async {
    Response? response = await apiGetRequests("admin/loads_assigned.php");

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> getAllVehicles() async {
    Response? response = await apiGetRequests("admin/registered_vehicles.php");

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> getRegDrivers() async {
    Response? response = await apiGetRequests("admin/registered_drivers.php");

    if (response != null) {
      return response;
    }

    return null;
  }
  Future<Response?> getVehicleDetail(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/vehicle_detail.php", credentials );

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> fetchSingleLoad(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/load_details.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> createNewUser(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/users_registration.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> deletVehicle(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/admin_delete_vehicle.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }


  Future<Response?> deletLoad(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/delete_load.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> deletStaff(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/admin_delete_user.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> updateRegLoads(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/edit_load.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }
  Future<Response?> updateVehicle(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/vehicle_update.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> getPickups(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/registered_pickups.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> getDrops(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/registered_drops.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> assignLoad(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/assign_load.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> pickLoad(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("admin/pickLoad.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> getAllTrucks() async {
    Response? response = await apiGetRequests("admin/registered_trucks.php");

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> getAllTrailers() async {
    Response? response = await apiGetRequests("admin/registered_trailer.php");

    if (response != null) {
      return response;
    }

    return null;
  }

}