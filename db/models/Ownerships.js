const { Model, DataTypes } = require("sequelize");

class Ownerships extends Model {
  static init(connection) {
    return super.init(
      {
        user_uuid: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          length: 10,
        },
        device_address: {
          type: DataTypes.STRING,
          primaryKey: true,
          length: 10,
        },
      },
      {
        sequelize: connection,
        tableName: "ownerships",
        underscored: true,
        timestamps: false,
      }
    );
  }

  static associate(models) {
    this.belongsTo(models.Users, {
      foreignKey: "user_uuid",
      targetKey: "uuid",
    });
    this.belongsTo(models.Devices, {
      foreignKey: "device_address",
      targetKey: "address",
    });
  }
}
module.exports = {
  Ownerships,
};
