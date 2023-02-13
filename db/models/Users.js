const { Model, DataTypes } = require("sequelize");

class Users extends Model {
  static init(connection) {
    return super.init(
      {
        uuid: {
          type: DataTypes.STRING,
          primaryKey: true,
          length: 10,
        },
        first_name: {
          type: DataTypes.STRING,
          length: 100,
        },
        last_name: {
          type: DataTypes.STRING,
          length: 100,
        },
        type: {
          type: DataTypes.STRING,
          length: 20,
        },
      },
      {
        sequelize: connection,
        tableName: "users",
        underscored: true,
        timestamps: false,
      }
    );
  }

  static associate(models) {
    this.hasMany(models.QRCode);
    this.hasMany(models.Ownerships);
    this.hasMany(models.Cards);
  }
}
module.exports = {
  Users: Users,
};
