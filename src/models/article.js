import { Model, DataTypes } from "sequelize";
import { sequelize } from "./sequelizeClient.js";

export class Article extends Model {}

Article.init(
  {
    title: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
  },
  {
    sequelize,
    tableName: "article",
  }
);
