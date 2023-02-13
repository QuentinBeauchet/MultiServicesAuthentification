const { Model, DataTypes } = require("sequelize");

class Devices extends Model {
  static init(connection) {
    return super.init(
      {
        address: {
          type: DataTypes.STRING,
          primaryKey: true,
          length: 20,
          allowNull: false,
        },
        name: {
          type: DataTypes.STRING,
          length: 128,
          allowNull: false,
        },
      },
      {
        sequelize: connection,
        tableName: "devices",
        underscored: true,
        timestamps: false,
      }
    );
  }

  static associate(models) {
    this.hasOne(models.Ownerships);
    this.hasMany(models.Bluetooth);
    this.hasMany(models.Wifi);
  }
}
module.exports = {
  Devices,
};
