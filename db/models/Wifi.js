const { Model, DataTypes } = require("sequelize");

class Wifi extends Model {
  static init(connection) {
    return super.init(
      {
        id: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          length: 11,
        },
        device_address: {
          type: DataTypes.STRING,
          length: 20,
          allowNull: false,
        },
        time: {
          type: DataTypes.DATE,
          allowNull: true,
        },
      },
      {
        sequelize: connection,
        tableName: "wifi",
        underscored: true,
        timestamps: false,
      }
    );
  }

  static associate(models) {
    this.belongsTo(models.Devices, {
      foreignKey: "device_address",
      targetKey: "address",
    });
  }
}
module.exports = {
  Wifi,
};
