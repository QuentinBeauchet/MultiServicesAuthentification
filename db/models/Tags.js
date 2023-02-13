const { Model, DataTypes } = require("sequelize");

class Tags extends Model {
  static init(connection) {
    return super.init(
      {
        user_uuid: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          length: 10,
        },
        card_rfid: {
          type: DataTypes.STRING,
          primaryKey: true,
          length: 30,
        },
      },
      {
        sequelize: connection,
        tableName: "tags",
        underscored: true,
        timestamps: false,
      }
    );
  }
  static associate(models) {
    this.belongsTo(models.Cards, {
      foreignKey: "card_rfid",
      targetKey: "rfid",
    });
    this.belongsTo(models.Users, {
      foreignKey: "user_uuid",
      targetKey: "uuid",
    });
  }
}
module.exports = {
  Tags,
};
