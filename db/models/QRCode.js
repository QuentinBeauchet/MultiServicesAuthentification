const { Model, DataTypes } = require("sequelize");

class QRCode extends Model {
  static init(connection) {
    return super.init(
      {
        id: {
          type: DataTypes.STRING,
          primaryKey: true,
          length: 11,
        },
        user_uuid: {
          type: DataTypes.STRING,
          allowNull: false,
          length: 10,
        },
        time: {
          type: DataTypes.DATE,
          allowNull: true,
        },
      },
      {
        sequelize: connection,
        tableName: "qrcode",
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
  }
}
module.exports = {
  QRCode,
};
