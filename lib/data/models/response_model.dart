class ResponseModel {
  final int statusCode;
  final dynamic returnData;
  final bool isSuccess;

  ResponseModel({
    required this.isSuccess,
    required this.statusCode,
    required this.returnData,
  });
}
