/// This class is used in the [costsheet1_item_widget] screen.
class Costsheet1ItemModel {
  Costsheet1ItemModel({
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