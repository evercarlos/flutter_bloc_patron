-- Table: "ECR_Entidad"

-- DROP TABLE "ECR_Entidad";

CREATE TABLE "ECR_Entidad"
(
  id serial NOT NULL,
  name_entity character varying(255),
  legal_address character varying(255),
  paternal_surname character varying(255),
  maternal_surname character varying(255),
  names character varying(255),
  type_person_id integer NOT NULL,
  document_type_identity_id integer NOT NULL,
  document character varying(255) NOT NULL,
  social_reason character varying(255),
  is_client boolean NOT NULL DEFAULT true,
  is_provider boolean NOT NULL DEFAULT true,
  contact character varying(255),
  contact_phone character varying(255),
  contact_email character varying(255),
  user_created integer NOT NULL DEFAULT 1,
  user_updated integer NOT NULL DEFAULT 1,
  user_deleted integer,
  created_at timestamp(0) without time zone,
  updated_at timestamp(0) without time zone,
  deleted_at timestamp(0) without time zone,
  CONSTRAINT "ECR_Entidad_pkey" PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "ECR_Entidad"
  OWNER TO postgres;
GRANT ALL ON TABLE "ECR_Entidad" TO postgres;
