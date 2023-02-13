const { Model, DataTypes } = require("sequelize");

class Bluetooth extends Model {
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
          type: DataTypes.TIME,
          allowNull: true,
        },
      },
      {
        sequelize: connection,
        tableName: "bluetooth",
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
  Bluetooth,
};
