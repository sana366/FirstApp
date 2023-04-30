class ApiResponse {
  final String response;
  final String responseMessage;
  final String rollno;
  final int loginStatus;
  final String status;

  ApiResponse({
    required this.response,
    required this.responseMessage,
    required this.rollno,
    required this.loginStatus,
    required this.status,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      response: json['response'],
      responseMessage: json['response_message'],
      rollno: json['rollno'],
      loginStatus: json['login_status'],
      status: json['status'],
    );
  }
}
