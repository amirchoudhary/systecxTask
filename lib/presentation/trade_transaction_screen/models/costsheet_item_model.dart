/// This class is used in the [costsheet_item_widget] screen.
class CostsheetItemModel {
  CostsheetItemModel({
    this.username,
    this.customerId,
    this.id,
  }) {
    username = username ?? "Cost Sheet";
    customerId = customerId ?? "by Vineeta";
    id = id ?? "";
  }

  String? username;

  String? customerId;

  String? id;
}
