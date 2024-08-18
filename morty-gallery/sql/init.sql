CREATE TABLE images (
	id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	host_name TEXT not null,
	original_name TEXT not null,
	date_taken TIMESTAMP not null,
	date_uploaded TIMESTAMP not null
);

CREATE TABLE tags (
	id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name text not null
);

CREATE TABLE image_tags (
	image_id bigint REFERENCES images(id),
	tag_id bigint REFERENCES tags(id),
	PRIMARY KEY(image_id, tag_id)
)