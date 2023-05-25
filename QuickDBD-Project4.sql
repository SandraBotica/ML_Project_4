-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/f7nw1E
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "heart" (
    "age" INTEGER(2)   NOT NULL,
    "sex" INTEGER(1)   NOT NULL,
    "cp" INTEGER(1)   NOT NULL,
    "trtbps" INTEGER(3)   NOT NULL,
    "chol" INTEGER(3)   NOT NULL,
    "fbs" INTEGER(1)   NOT NULL,
    "restecg" INTEGER(1)   NOT NULL,
    "thalachh" INTEGER(3)   NOT NULL,
    "exng" INTEGER(1)   NOT NULL,
    "oldpeak" FLOAT(3)   NOT NULL,
    "slp" INTEGER(1)   NOT NULL,
    "caa" INTEGER(1)   NOT NULL,
    "thall" INTEGER(1)   NOT NULL,
    "output" INTEGER(1)   NOT NULL
);

