const { Model, DataTypes } = require("sequelize");

class Cards extends Model {
  static init(connection) {
    return super.init(
      {
        id: {
          type: DataTypes.STRING,
          primaryKey: true,
          autoIncrement: true,
          length: 20,
        },
        rfid: {
          type: DataTypes.STRING,
          allowNull: false,
          length: 30,
        },
        time: {
          type: DataTypes.TIME,
          allowNull: true,
        },
      },
      {
        sequelize: connection,
        tableName: "cards",
        underscored: true,
        timestamps: false,
      }
    );
  }
  static associate(models) {
    this.belongsTo(models.Tags, {
      foreignKey: "rfid",
      targetKey: "card_rfid",
    });
  }
}
module.exports = {
  Cards,
};
