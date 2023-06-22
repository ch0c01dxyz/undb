PRAGMA foreign_keys = OFF;
BEGIN TRANSACTION;
CREATE TABLE `mikro_orm_migrations` (
	`id` integer not null primary key autoincrement,
	`name` varchar(255),
	`executed_at` datetime default CURRENT_TIMESTAMP
);
INSERT INTO mikro_orm_migrations
VALUES(1, 'initial', '2023-05-20 09:46:34');
CREATE TABLE `undb_table` (
	`id` text not null,
	`created_at` datetime not null,
	`updated_at` datetime not null,
	`deleted_at` datetime null,
	`name` text not null,
	`emoji` text not null,
	`views_order` text null,
	primary key (`id`)
);
INSERT INTO undb_table
VALUES(
		'tbl4undb0lh',
		1684577267430,
		1685212920300,
		NULL,
		'Deal Tracker',
		'1f44d',
		'viwnxi5l3qi,viw64ia4fxz,viwmc5m5646'
	);
INSERT INTO undb_table
VALUES(
		'tblramxgp7z',
		1684577324093,
		1684577324093,
		NULL,
		'Contacts',
		'1f44d',
		'viw1f88x075'
	);
INSERT INTO undb_table
VALUES(
		'tblwqjcq0x8',
		1684597096588,
		1684597096588,
		NULL,
		'Company',
		'1f44d',
		'viw70p8od12'
	);
INSERT INTO undb_table
VALUES(
		'tbl4ezqb49a',
		1684599288325,
		1684599288325,
		NULL,
		'Title',
		'1f44d',
		'viw9p12yoag'
	);
INSERT INTO undb_table
VALUES(
		'tbl2za35hbg',
		1684655636180,
		1684655636180,
		NULL,
		'Employee onboarding',
		'1f44d',
		'viw3qge14qx'
	);
INSERT INTO undb_table
VALUES(
		'tblruubokdc',
		1684655754437,
		1685265649318,
		NULL,
		'Employees',
		'1f44d',
		'viw2j74tv49,viwbo3rzlbe'
	);
INSERT INTO undb_table
VALUES(
		'tblk4h9pgm7',
		1685172790220,
		1685213176904,
		NULL,
		'Project details',
		'',
		'viws2429fm1,viw1hmtgok8,viw2oflfayp,viw1afphzlj,viwv5pxkvis,viwufxtr4ao'
	);
INSERT INTO undb_table
VALUES(
		'tblpgqt9f8e',
		1685174348986,
		1685213158771,
		NULL,
		'Subcontractors',
		'',
		'viwgtqmkuso,viwimtmwzd0,viwbcscykkd,viwab1ycczl,viwe6cxqgup'
	);
INSERT INTO undb_table
VALUES(
		'tblfx77neny',
		1685174750727,
		1685213067198,
		NULL,
		'Project overview',
		'',
		'viwdhyehe16,viwoxmuxqte'
	);
INSERT INTO undb_table
VALUES(
		'tblq36e537c',
		1685178619601,
		1685212845932,
		1685212860180,
		'test',
		'',
		'viwdec4oi8c'
	);
CREATE TABLE `undb_field` (
	`id` text not null,
	`created_at` datetime not null,
	`updated_at` datetime not null,
	`deleted_at` datetime null,
	`table_id` text null,
	`name` text not null,
	`description` text null,
	`system` integer not null default false,
	`required` integer not null default false,
	`display` integer not null default false,
	`type` text not null,
	`format` text null,
	`foreign_table_id` text null,
	`symmetric_reference_field_id` text null,
	`is_owner` integer null default false,
	`parent_field_id` text null,
	`tree_field_id` text null,
	`max` integer null,
	`count_reference_field_id` text null,
	`lookup_reference_field_id` text null,
	`sum_reference_field_id` text null,
	`sum_aggregate_field_id` text null,
	`average_reference_field_id` text null,
	`average_aggregate_field_id` text null,
	`time_format` text null,
	`symbol` text null,
	constraint `undb_field_table_id_foreign` foreign key(`table_id`) references `undb_table`(`id`) on delete cascade on update cascade,
	constraint `undb_field_foreign_table_id_foreign` foreign key(`foreign_table_id`) references `undb_table`(`id`) on delete
	set null on update cascade,
		constraint `undb_field_symmetric_reference_field_id_foreign` foreign key(`symmetric_reference_field_id`) references `undb_field`(`id`) on delete
	set null on update cascade,
		constraint `undb_field_count_reference_field_id_foreign` foreign key(`count_reference_field_id`) references `undb_field`(`id`) on delete
	set null on update cascade,
		constraint `undb_field_lookup_reference_field_id_foreign` foreign key(`lookup_reference_field_id`) references `undb_field`(`id`) on delete
	set null on update cascade,
		constraint `undb_field_sum_reference_field_id_foreign` foreign key(`sum_reference_field_id`) references `undb_field`(`id`) on delete
	set null on update cascade,
		constraint `undb_field_sum_aggregate_field_id_foreign` foreign key(`sum_aggregate_field_id`) references `undb_field`(`id`) on delete
	set null on update cascade,
		constraint `undb_field_average_reference_field_id_foreign` foreign key(`average_reference_field_id`) references `undb_field`(`id`) on delete
	set null on update cascade,
		constraint `undb_field_average_aggregate_field_id_foreign` foreign key(`average_aggregate_field_id`) references `undb_field`(`id`) on delete
	set null on update cascade,
		primary key (`id`)
);
INSERT INTO undb_field
VALUES(
		'fldopx87187',
		1684577267430,
		1684577267466,
		NULL,
		'tbl4undb0lh',
		'id',
		NULL,
		1,
		0,
		0,
		'id',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld7m4e9dbz',
		1684577267430,
		1684577267466,
		NULL,
		'tbl4undb0lh',
		'Deal',
		'deal name ',
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld4sf2mdr8',
		1684577267430,
		1684577267466,
		NULL,
		'tbl4undb0lh',
		'Stage',
		NULL,
		0,
		1,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld7vd9ir75',
		1684577267431,
		1684577267466,
		NULL,
		'tbl4undb0lh',
		'createdAt',
		NULL,
		1,
		0,
		0,
		'created-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldx5w2pcft',
		1684577267431,
		1684577267466,
		NULL,
		'tbl4undb0lh',
		'createdBy',
		NULL,
		1,
		0,
		0,
		'created-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld8ql20jlm',
		1684577267431,
		1684577267466,
		NULL,
		'tbl4undb0lh',
		'updatedAt',
		NULL,
		1,
		0,
		0,
		'updated-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldxq7kp4eu',
		1684577267431,
		1684577267466,
		NULL,
		'tbl4undb0lh',
		'updatedBy',
		NULL,
		1,
		0,
		0,
		'updated-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldtefbcm18',
		1684577290100,
		1684577290126,
		NULL,
		'tbl4undb0lh',
		'Owner',
		NULL,
		0,
		0,
		0,
		'collaborator',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'flderd3a3rc',
		1684577324093,
		1684577324122,
		NULL,
		'tblramxgp7z',
		'id',
		NULL,
		1,
		0,
		0,
		'id',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldel2i4v7v',
		1684577324094,
		1684577324122,
		NULL,
		'tblramxgp7z',
		'Contact',
		'contact name',
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldconkpc7g',
		1684577324094,
		1684577324122,
		NULL,
		'tblramxgp7z',
		'createdAt',
		NULL,
		1,
		0,
		0,
		'created-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld7smzf5np',
		1684577324094,
		1684577324122,
		NULL,
		'tblramxgp7z',
		'createdBy',
		NULL,
		1,
		0,
		0,
		'created-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldelspnzaq',
		1684577324094,
		1684577324122,
		NULL,
		'tblramxgp7z',
		'updatedAt',
		NULL,
		1,
		0,
		0,
		'updated-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldpkr0phjz',
		1684577324094,
		1684577324122,
		NULL,
		'tblramxgp7z',
		'updatedBy',
		NULL,
		1,
		0,
		0,
		'updated-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld5vld4clt',
		1684577348149,
		1684577348170,
		NULL,
		'tbl4undb0lh',
		'Contacts',
		NULL,
		0,
		0,
		0,
		'reference',
		NULL,
		'tblramxgp7z',
		'fldmz9qd18u',
		1,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldmz9qd18u',
		1684577348168,
		1684935091266,
		NULL,
		'tblramxgp7z',
		'Deal Tracker',
		'',
		0,
		0,
		0,
		'reference',
		NULL,
		'tbl4undb0lh',
		'fld5vld4clt',
		0,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldghc0rw09',
		1684580952905,
		1684580952931,
		NULL,
		'tbl4undb0lh',
		'Priority',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldjyupbqlm',
		1684581148218,
		1684581148242,
		NULL,
		'tbl4undb0lh',
		'Deal Length',
		NULL,
		0,
		0,
		0,
		'date-range',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld0f8xaf8q',
		1684581180852,
		1684934970336,
		1684934970335,
		'tbl4undb0lh',
		'Deal Value',
		'$',
		0,
		0,
		0,
		'number',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldqpn61v8h',
		1684581231068,
		1684581231093,
		NULL,
		'tbl4undb0lh',
		'Close Date',
		NULL,
		0,
		0,
		0,
		'date',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld2u4gkap9',
		1684581247030,
		1684581247050,
		NULL,
		'tbl4undb0lh',
		'Deal Creation Date',
		NULL,
		0,
		0,
		0,
		'date',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldcamelfi7',
		1684581555250,
		1684581555278,
		NULL,
		'tblramxgp7z',
		'Type',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldqojjbrau',
		1684596981406,
		1684596981427,
		NULL,
		'tblramxgp7z',
		'Email',
		NULL,
		0,
		0,
		0,
		'email',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldovc5s8pe',
		1684596988567,
		1684597112361,
		1684597112360,
		'tblramxgp7z',
		'Company',
		NULL,
		0,
		0,
		0,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldpq4mvj6c',
		1684597040388,
		1684597040413,
		NULL,
		'tblramxgp7z',
		'Phone',
		'phone number',
		0,
		0,
		0,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldzfu3x1ft',
		1684597096588,
		1684597096613,
		NULL,
		'tblwqjcq0x8',
		'id',
		NULL,
		1,
		0,
		0,
		'id',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldo4mvc3bq',
		1684597096588,
		1684597096613,
		NULL,
		'tblwqjcq0x8',
		'Company',
		'company name',
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldozbddvfk',
		1684597096588,
		1684597096613,
		NULL,
		'tblwqjcq0x8',
		'createdAt',
		NULL,
		1,
		0,
		0,
		'created-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldapuzxp1y',
		1684597096588,
		1684597096613,
		NULL,
		'tblwqjcq0x8',
		'createdBy',
		NULL,
		1,
		0,
		0,
		'created-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldurfpiosy',
		1684597096588,
		1684597096613,
		NULL,
		'tblwqjcq0x8',
		'updatedAt',
		NULL,
		1,
		0,
		0,
		'updated-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld2mh42tvf',
		1684597096588,
		1684597096613,
		NULL,
		'tblwqjcq0x8',
		'updatedBy',
		NULL,
		1,
		0,
		0,
		'updated-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldrlmpebtz',
		1684597104042,
		1684599262104,
		1684599262103,
		'tblwqjcq0x8',
		'Title',
		'',
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldtgvzjaoj',
		1684597172260,
		1684597172278,
		NULL,
		'tblramxgp7z',
		'Company',
		NULL,
		0,
		0,
		0,
		'reference',
		NULL,
		'tblwqjcq0x8',
		'fldrjp6v8xl',
		1,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldrjp6v8xl',
		1684597172276,
		1684597172276,
		NULL,
		'tblwqjcq0x8',
		'Contacts',
		NULL,
		0,
		0,
		0,
		'reference',
		NULL,
		'tblramxgp7z',
		'fldtgvzjaoj',
		0,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldn8qkrzwi',
		1684597224553,
		1684599359046,
		1684599359046,
		'tblramxgp7z',
		'Title',
		NULL,
		0,
		0,
		0,
		'lookup',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldtgvzjaoj',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldgbowxfbc',
		1684597247673,
		1684597247694,
		NULL,
		'tblramxgp7z',
		'Comments',
		NULL,
		0,
		0,
		0,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld6pd0v553',
		1684599118649,
		1684599200681,
		1684599200680,
		'tblwqjcq0x8',
		'Title Name',
		NULL,
		0,
		0,
		0,
		'tree',
		NULL,
		NULL,
		NULL,
		NULL,
		'fld5kzdse27',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld5kzdse27',
		1684599118651,
		1684599204842,
		1684599204842,
		'tblwqjcq0x8',
		'Company Name',
		'',
		0,
		0,
		0,
		'parent',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fld6pd0v553',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldnpyc4w0l',
		1684599288325,
		1684599288343,
		NULL,
		'tbl4ezqb49a',
		'id',
		NULL,
		1,
		0,
		0,
		'id',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldvpb5tbbc',
		1684599288325,
		1684599288343,
		NULL,
		'tbl4ezqb49a',
		'Title',
		'Title Name',
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldyaf9zrt8',
		1684599288325,
		1684599288343,
		NULL,
		'tbl4ezqb49a',
		'createdAt',
		NULL,
		1,
		0,
		0,
		'created-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld29n86hi3',
		1684599288325,
		1684599288343,
		NULL,
		'tbl4ezqb49a',
		'createdBy',
		NULL,
		1,
		0,
		0,
		'created-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldka6qo796',
		1684599288325,
		1684599288343,
		NULL,
		'tbl4ezqb49a',
		'updatedAt',
		NULL,
		1,
		0,
		0,
		'updated-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldtn1k1f67',
		1684599288325,
		1684599288343,
		NULL,
		'tbl4ezqb49a',
		'updatedBy',
		NULL,
		1,
		0,
		0,
		'updated-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldlosp8skm',
		1684599347668,
		1684599347668,
		NULL,
		'tblwqjcq0x8',
		'Title',
		NULL,
		0,
		0,
		0,
		'reference',
		NULL,
		'tbl4ezqb49a',
		NULL,
		0,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldamnv8ghw',
		1684599441815,
		1684599500838,
		NULL,
		'tblwqjcq0x8',
		'Title Name',
		'',
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld7a5vkk4j',
		1684599517049,
		1684599517074,
		NULL,
		'tblramxgp7z',
		'Title',
		NULL,
		0,
		0,
		0,
		'lookup',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldtgvzjaoj',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldo6wz3szd',
		1684655636180,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'id',
		NULL,
		1,
		0,
		0,
		'id',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldskwotpjg',
		1684655636180,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'Employee',
		'employee name',
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldr3t33atc',
		1684655636181,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'Status',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldd55dsm2m',
		1684655636181,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'HR responsible',
		NULL,
		0,
		0,
		0,
		'collaborator',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldxx0cyu8w',
		1684655636182,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'Email',
		NULL,
		0,
		0,
		0,
		'email',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldqjxpupfu',
		1684655636183,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'Phone',
		'phone number',
		0,
		0,
		0,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld19njyj50',
		1684655636183,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'Position',
		NULL,
		0,
		0,
		0,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld67w65koz',
		1684655636183,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'Department',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld92yn7hcf',
		1684655636183,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'createdAt',
		NULL,
		1,
		0,
		0,
		'created-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldyxr4fgcj',
		1684655636183,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'createdBy',
		NULL,
		1,
		0,
		0,
		'created-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld52ryjekr',
		1684655636183,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'updatedAt',
		NULL,
		1,
		0,
		0,
		'updated-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldwbr3sb09',
		1684655636183,
		1684655636217,
		NULL,
		'tbl2za35hbg',
		'updatedBy',
		NULL,
		1,
		0,
		0,
		'updated-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldh65rro60',
		1684655754437,
		1684655754459,
		NULL,
		'tblruubokdc',
		'id',
		NULL,
		1,
		0,
		0,
		'id',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldhrrqqlqh',
		1684655754437,
		1684657570979,
		NULL,
		'tblruubokdc',
		'Employee',
		'',
		0,
		0,
		0,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld0gmmj29q',
		1684655754437,
		1684657565944,
		NULL,
		'tblruubokdc',
		'Title',
		'',
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldjrqmbjni',
		1684655754437,
		1684655754459,
		NULL,
		'tblruubokdc',
		'createdAt',
		NULL,
		1,
		0,
		0,
		'created-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldgt1q5u09',
		1684655754437,
		1684655754459,
		NULL,
		'tblruubokdc',
		'createdBy',
		NULL,
		1,
		0,
		0,
		'created-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld462h34dx',
		1684655754437,
		1684655754459,
		NULL,
		'tblruubokdc',
		'updatedAt',
		NULL,
		1,
		0,
		0,
		'updated-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldzpxkf4wc',
		1684655754437,
		1684655754460,
		NULL,
		'tblruubokdc',
		'updatedBy',
		NULL,
		1,
		0,
		0,
		'updated-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldfpeufgq3',
		1684657625780,
		1684657625780,
		NULL,
		'tbl2za35hbg',
		'Reporting manager',
		NULL,
		0,
		0,
		0,
		'reference',
		NULL,
		'tblruubokdc',
		NULL,
		0,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldui7hrx2t',
		1684657651403,
		1684657651422,
		NULL,
		'tbl2za35hbg',
		'Date of joining',
		NULL,
		0,
		0,
		0,
		'date',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld38j2aoqw',
		1684657728406,
		1684657728431,
		NULL,
		'tbl2za35hbg',
		'Physical workplace',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldmjxybwnt',
		1684657850773,
		1684657850796,
		NULL,
		'tbl2za35hbg',
		'Software workplace',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldntjvterl',
		1684657896209,
		1684657896229,
		NULL,
		'tbl2za35hbg',
		'Send welcome email',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldu3ll00ho',
		1684657920293,
		1684657920317,
		NULL,
		'tbl2za35hbg',
		'Company email',
		'company email',
		0,
		0,
		0,
		'email',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldy60tdkfr',
		1684657974107,
		1684657974134,
		NULL,
		'tbl2za35hbg',
		'Onboarding meeting with HR',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld4a04leij',
		1684658017413,
		1684658017434,
		NULL,
		'tbl2za35hbg',
		'schedule training sessions',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldng2e0uhl',
		1684658032532,
		1684658032552,
		NULL,
		'tbl2za35hbg',
		'Responsible to the onboarding',
		NULL,
		0,
		0,
		0,
		'collaborator',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldkd8gvemb',
		1684658052725,
		1684658052737,
		NULL,
		'tbl2za35hbg',
		'Performance 1st week',
		NULL,
		0,
		0,
		0,
		'rating',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		5,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld5pgga2xx',
		1684658067684,
		1684658067702,
		NULL,
		'tbl2za35hbg',
		'Performance 1st month',
		NULL,
		0,
		0,
		0,
		'rating',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		5,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldvi5kqyg9',
		1684934910259,
		1684935104314,
		NULL,
		'tbl4undb0lh',
		'Deal Value',
		'',
		0,
		0,
		1,
		'currency',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'$'
	);
INSERT INTO undb_field
VALUES(
		'fldysr6gonr',
		1684935268661,
		1684935268689,
		NULL,
		'tblramxgp7z',
		'Deals value (sum)',
		NULL,
		0,
		0,
		0,
		'sum',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldmz9qd18u',
		'fldvi5kqyg9',
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld3wri112p',
		1684937500915,
		1684937500937,
		NULL,
		'tblramxgp7z',
		'avg',
		NULL,
		0,
		0,
		0,
		'average',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldmz9qd18u',
		'fldvi5kqyg9',
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldqo1swr94',
		1684937537591,
		1684937537613,
		NULL,
		'tblramxgp7z',
		'count',
		NULL,
		0,
		0,
		0,
		'count',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldmz9qd18u',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld56n18njt',
		1684937765660,
		1684938096229,
		1684938096228,
		'tblwqjcq0x8',
		'Subordinate Title',
		NULL,
		0,
		0,
		0,
		'tree',
		NULL,
		NULL,
		NULL,
		NULL,
		'fld9jfgs4po',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld9jfgs4po',
		1684937765665,
		1684938100840,
		1684938100840,
		'tblwqjcq0x8',
		'Superior Title',
		NULL,
		0,
		0,
		0,
		'parent',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fld56n18njt',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldz1tn18w7',
		1685172790220,
		1685172790265,
		NULL,
		'tblk4h9pgm7',
		'id',
		NULL,
		1,
		0,
		0,
		'id',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldf5jx5k3p',
		1685172790221,
		1685176143733,
		1685176143732,
		'tblk4h9pgm7',
		'Categories',
		'project categories',
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldtq3ctq2v',
		1685172790221,
		1685172790266,
		NULL,
		'tblk4h9pgm7',
		'创建时间',
		NULL,
		1,
		0,
		0,
		'created-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldy5jci1it',
		1685172790221,
		1685172790266,
		NULL,
		'tblk4h9pgm7',
		'创建者',
		NULL,
		1,
		0,
		0,
		'created-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldbjwrkl4w',
		1685172790221,
		1685172790266,
		NULL,
		'tblk4h9pgm7',
		'更新时间',
		NULL,
		1,
		0,
		0,
		'updated-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldlad9mr00',
		1685172790221,
		1685172790266,
		NULL,
		'tblk4h9pgm7',
		'更新者',
		NULL,
		1,
		0,
		0,
		'updated-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld7u72oymt',
		1685174100327,
		1685174291474,
		1685174291473,
		'tblk4h9pgm7',
		'Item',
		'',
		0,
		0,
		0,
		'tree',
		NULL,
		NULL,
		NULL,
		NULL,
		'fldyldbx3am',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldyldbx3am',
		1685174100330,
		1685174294300,
		1685174294300,
		'tblk4h9pgm7',
		'categories',
		NULL,
		0,
		0,
		0,
		'parent',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fld7u72oymt',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldja1i3sed',
		1685174348987,
		1685174349030,
		NULL,
		'tblpgqt9f8e',
		'id',
		NULL,
		1,
		0,
		0,
		'id',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld5vejsyk6',
		1685174348987,
		1685174349030,
		NULL,
		'tblpgqt9f8e',
		'Item',
		NULL,
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld8yjkgwax',
		1685174348987,
		1685174349031,
		NULL,
		'tblpgqt9f8e',
		'createdAt',
		NULL,
		1,
		0,
		0,
		'created-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldp18kok8t',
		1685174348987,
		1685174349031,
		NULL,
		'tblpgqt9f8e',
		'createdBy',
		NULL,
		1,
		0,
		0,
		'created-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldrl3wtwgi',
		1685174348988,
		1685174349031,
		NULL,
		'tblpgqt9f8e',
		'updatedAt',
		NULL,
		1,
		0,
		0,
		'updated-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldjjk7jq88',
		1685174348988,
		1685174349031,
		NULL,
		'tblpgqt9f8e',
		'updatedBy',
		NULL,
		1,
		0,
		0,
		'updated-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldrf5tre1y',
		1685174378293,
		1685174378315,
		NULL,
		'tblpgqt9f8e',
		'Status',
		NULL,
		0,
		0,
		0,
		'bool',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld5dfxirz4',
		1685174428883,
		1685208283981,
		NULL,
		'tblpgqt9f8e',
		'Type',
		'',
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldin0o52s2',
		1685174447425,
		1685174447444,
		NULL,
		'tblpgqt9f8e',
		'Address',
		NULL,
		0,
		0,
		0,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld234mahi3',
		1685174463716,
		1685174463738,
		NULL,
		'tblpgqt9f8e',
		'Phone',
		NULL,
		0,
		0,
		0,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldknol0wfv',
		1685174490950,
		1685174490971,
		NULL,
		'tblpgqt9f8e',
		'Email',
		NULL,
		0,
		0,
		0,
		'email',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'flda93at8lf',
		1685174547333,
		1685174547350,
		NULL,
		'tblpgqt9f8e',
		'Subcontractor Log',
		NULL,
		0,
		0,
		0,
		'date',
		'yyyy/MM/dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldqetskkmf',
		1685174661292,
		1685176156114,
		NULL,
		'tblpgqt9f8e',
		'link to Project details',
		'',
		0,
		0,
		0,
		'reference',
		NULL,
		'tblk4h9pgm7',
		NULL,
		0,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld2z8lm0nq',
		1685174750727,
		1685174750762,
		NULL,
		'tblfx77neny',
		'id',
		NULL,
		1,
		0,
		0,
		'id',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldi3ctnklu',
		1685174750727,
		1685174825454,
		NULL,
		'tblfx77neny',
		'Unit',
		'',
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldz6ialch3',
		1685174750727,
		1685174750762,
		NULL,
		'tblfx77neny',
		'createdAt',
		NULL,
		1,
		0,
		0,
		'created-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldldugufai',
		1685174750727,
		1685174750762,
		NULL,
		'tblfx77neny',
		'createdBy',
		NULL,
		1,
		0,
		0,
		'created-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld6ipbvk1v',
		1685174750727,
		1685174750762,
		NULL,
		'tblfx77neny',
		'updatedAt',
		NULL,
		1,
		0,
		0,
		'updated-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldq4vl65vq',
		1685174750727,
		1685174750762,
		NULL,
		'tblfx77neny',
		'updatedBy',
		NULL,
		1,
		0,
		0,
		'updated-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldxgzu2rfm',
		1685174852181,
		1685174852203,
		NULL,
		'tblfx77neny',
		'Address',
		NULL,
		0,
		0,
		0,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldxjfi8nvf',
		1685175204765,
		1685175204791,
		NULL,
		'tblfx77neny',
		'Project manager',
		NULL,
		0,
		0,
		0,
		'collaborator',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldx46wrlru',
		1685175511798,
		1685175511824,
		NULL,
		'tblfx77neny',
		'Status',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldisycq2kk',
		1685175632543,
		1685175632564,
		NULL,
		'tblfx77neny',
		'Permit',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldf3858jba',
		1685175686282,
		1685175686306,
		NULL,
		'tblfx77neny',
		'Foundations',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldzcbm7d6f',
		1685175744383,
		1685175744421,
		NULL,
		'tblfx77neny',
		'Drywall',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldfhnwfm1d',
		1685175795608,
		1685175795634,
		NULL,
		'tblfx77neny',
		'Trench',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld5tprv6oh',
		1685175846843,
		1685206616994,
		NULL,
		'tblfx77neny',
		'Framing',
		'',
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld9k1d6632',
		1685175903838,
		1685175903860,
		NULL,
		'tblfx77neny',
		'Electrical',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldqt93dh02',
		1685175947059,
		1685175947081,
		NULL,
		'tblfx77neny',
		'Roofing',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldicbkx09x',
		1685175995109,
		1685175995137,
		NULL,
		'tblfx77neny',
		'QC',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldrwyxeapl',
		1685176018965,
		1685176018986,
		NULL,
		'tblfx77neny',
		'Start date',
		NULL,
		0,
		0,
		0,
		'date',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'flds9gyvh1y',
		1685176060711,
		1685176060734,
		NULL,
		'tblk4h9pgm7',
		'Item',
		NULL,
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldifd9g29a',
		1685176096590,
		1685176096590,
		NULL,
		'tblfx77neny',
		'Connect to "Project details" board',
		NULL,
		0,
		0,
		0,
		'reference',
		NULL,
		'tblk4h9pgm7',
		NULL,
		0,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld1zc9irou',
		1685176183500,
		1685176183523,
		NULL,
		'tblk4h9pgm7',
		'Address',
		NULL,
		0,
		0,
		0,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldnktdp6ej',
		1685176415123,
		1685176627939,
		NULL,
		'tblk4h9pgm7',
		'Unit main phase',
		'',
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'flds4gpji6k',
		1685176431794,
		1685176431813,
		NULL,
		'tblk4h9pgm7',
		'Project manager',
		NULL,
		0,
		0,
		0,
		'collaborator',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldvvjbi1nv',
		1685176480392,
		1685176480423,
		NULL,
		'tblk4h9pgm7',
		'Permits',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld7m1scjcc',
		1685176513442,
		1685176513458,
		NULL,
		'tblk4h9pgm7',
		'Expected permit date',
		NULL,
		0,
		0,
		0,
		'date',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldzpcp0ouz',
		1685176699721,
		1685176731041,
		NULL,
		'tblk4h9pgm7',
		'Foundation',
		'',
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld7iz2x2bs',
		1685176754725,
		1685176754745,
		NULL,
		'tblk4h9pgm7',
		'Foundation deadline',
		NULL,
		0,
		0,
		0,
		'date',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld749c7m6l',
		1685176806350,
		1685176806377,
		NULL,
		'tblk4h9pgm7',
		'Framing',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld22ldcbag',
		1685176828079,
		1685176828097,
		NULL,
		'tblk4h9pgm7',
		'Framing deadline',
		NULL,
		0,
		0,
		0,
		'date',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld8uonlrvg',
		1685176882333,
		1685176882354,
		NULL,
		'tblk4h9pgm7',
		'Roof & siding',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld6xpgey7o',
		1685176900369,
		1685176900392,
		NULL,
		'tblk4h9pgm7',
		'Roof & siding deadline',
		NULL,
		0,
		0,
		0,
		'date',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld6r6a1hc9',
		1685176942078,
		1685176942102,
		NULL,
		'tblk4h9pgm7',
		'Interior',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld19p1ahm5',
		1685176994753,
		1685176994779,
		NULL,
		'tblk4h9pgm7',
		'Exterior paint',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldtdqxqkhr',
		1685177111305,
		1685177111322,
		NULL,
		'tblk4h9pgm7',
		'Cabinets',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldzhfhodco',
		1685177439315,
		1685177439315,
		NULL,
		'tblk4h9pgm7',
		'Link to Subcontractors',
		NULL,
		0,
		0,
		0,
		'reference',
		NULL,
		'tblpgqt9f8e',
		NULL,
		0,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'flde0medsct',
		1685177533708,
		1685177533729,
		NULL,
		'tblk4h9pgm7',
		'Cabinets installation timeline',
		NULL,
		0,
		0,
		0,
		'date-range',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld5dje464n',
		1685177553110,
		1685177553138,
		NULL,
		'tblk4h9pgm7',
		'QC owner',
		NULL,
		0,
		0,
		0,
		'collaborator',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldn3txeox5',
		1685177668674,
		1685177668699,
		NULL,
		'tblk4h9pgm7',
		'Quality control status',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldy4xklvtp',
		1685177683298,
		1685177683317,
		NULL,
		'tblk4h9pgm7',
		'Project files',
		NULL,
		0,
		0,
		0,
		'attachment',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld4h9alzho',
		1685177708015,
		1685177708015,
		NULL,
		'tblk4h9pgm7',
		'link to Project overview',
		NULL,
		0,
		0,
		0,
		'reference',
		NULL,
		'tblfx77neny',
		NULL,
		0,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldome9lb5l',
		1685178035767,
		1685212310342,
		1685212310341,
		'tblk4h9pgm7',
		'Item name',
		NULL,
		0,
		0,
		0,
		'tree',
		NULL,
		NULL,
		NULL,
		NULL,
		'fldc7e9bf2j',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldc7e9bf2j',
		1685178035768,
		1685212314492,
		1685212314491,
		'tblk4h9pgm7',
		'Categories',
		NULL,
		0,
		0,
		0,
		'parent',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldome9lb5l',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldw0xhn5du',
		1685178477324,
		1685209414212,
		NULL,
		'tblk4h9pgm7',
		'Category',
		'',
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldgevznri1',
		1685178619602,
		1685178619656,
		NULL,
		'tblq36e537c',
		'id',
		NULL,
		1,
		0,
		0,
		'id',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld3nlurfbt',
		1685178619602,
		1685178619656,
		NULL,
		'tblq36e537c',
		'Name',
		NULL,
		0,
		0,
		1,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldgx3uro1u',
		1685178619602,
		1685178619656,
		NULL,
		'tblq36e537c',
		'createdAt',
		NULL,
		1,
		0,
		0,
		'created-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldhrtgoei0',
		1685178619602,
		1685178619657,
		NULL,
		'tblq36e537c',
		'createdBy',
		NULL,
		1,
		0,
		0,
		'created-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'flduskdkw7q',
		1685178619602,
		1685178619657,
		NULL,
		'tblq36e537c',
		'updatedAt',
		NULL,
		1,
		0,
		0,
		'updated-at',
		'yyyy-MM-dd',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldbti1u8mz',
		1685178619602,
		1685178619657,
		NULL,
		'tblq36e537c',
		'updatedBy',
		NULL,
		1,
		0,
		0,
		'updated-by',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldft7edqw6',
		1685178638992,
		1685178639017,
		NULL,
		'tblq36e537c',
		'child',
		NULL,
		0,
		0,
		0,
		'tree',
		NULL,
		NULL,
		NULL,
		NULL,
		'fldh0blyv2m',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldh0blyv2m',
		1685178638994,
		1685178639017,
		NULL,
		'tblq36e537c',
		'parent',
		NULL,
		0,
		0,
		0,
		'parent',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldft7edqw6',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldu4iy99hy',
		1685209380190,
		1685210576970,
		1685210576970,
		'tblpgqt9f8e',
		'category',
		NULL,
		0,
		0,
		0,
		'string',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldmv3t03kj',
		1685210615474,
		1685210615499,
		NULL,
		'tblpgqt9f8e',
		'Category',
		NULL,
		0,
		0,
		0,
		'select',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fld3814mrgg',
		1685213424927,
		1685213424953,
		NULL,
		'tblruubokdc',
		'Level',
		NULL,
		0,
		0,
		0,
		'number',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldylxmreki',
		1685213472369,
		1685213472390,
		NULL,
		'tblruubokdc',
		'Employee ID',
		NULL,
		0,
		0,
		0,
		'auto-increment',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldq5ohh7hx',
		1685213559676,
		1685213559696,
		NULL,
		'tblruubokdc',
		'subordinate',
		NULL,
		0,
		0,
		0,
		'tree',
		NULL,
		NULL,
		NULL,
		NULL,
		'fldtnny9yk9',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_field
VALUES(
		'fldtnny9yk9',
		1685213559678,
		1685213559696,
		NULL,
		'tblruubokdc',
		'Superior',
		NULL,
		0,
		0,
		0,
		'parent',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldq5ohh7hx',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
CREATE TABLE `undb_option` (
	`key` text not null,
	`created_at` datetime not null,
	`updated_at` datetime not null,
	`deleted_at` datetime null,
	`field_id` text null,
	`name` text not null,
	`color_name` text not null,
	`color_shade` integer not null,
	constraint `undb_option_field_id_foreign` foreign key(`field_id`) references `undb_field`(`id`) on delete cascade on update cascade,
	primary key (`key`)
);
INSERT INTO undb_option
VALUES(
		'optuo8m1',
		1684577267430,
		1684577267430,
		NULL,
		'fld4sf2mdr8',
		'New',
		'gray',
		5
	);
INSERT INTO undb_option
VALUES(
		'optapz93',
		1684577267430,
		1684577267430,
		NULL,
		'fld4sf2mdr8',
		'Discovery',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'opteh974',
		1684577267430,
		1684577267430,
		NULL,
		'fld4sf2mdr8',
		'Proposal',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opts4t4w',
		1684577267430,
		1684577267430,
		NULL,
		'fld4sf2mdr8',
		'Negotiation',
		'violet',
		5
	);
INSERT INTO undb_option
VALUES(
		'optdczmv',
		1684577267430,
		1684577267430,
		NULL,
		'fld4sf2mdr8',
		'Won',
		'lime',
		5
	);
INSERT INTO undb_option
VALUES(
		'optygwq0',
		1684577267430,
		1684577267430,
		NULL,
		'fld4sf2mdr8',
		'Lost',
		'red',
		5
	);
INSERT INTO undb_option
VALUES(
		'optua38g',
		1684580952905,
		1684580952905,
		NULL,
		'fldghc0rw09',
		'Hight',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'opty4o0z',
		1684580952905,
		1684580952905,
		NULL,
		'fldghc0rw09',
		'Medium',
		'yellow',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt68d8z',
		1684580952905,
		1684580952905,
		NULL,
		'fldghc0rw09',
		'Low',
		'green',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt88amk',
		1684581555250,
		1684581555250,
		NULL,
		'fldcamelfi7',
		'Customer',
		'indigo',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt0ucwc',
		1684581555250,
		1684581555250,
		NULL,
		'fldcamelfi7',
		'Qualified Lead',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opthjypi',
		1684581555250,
		1684581555250,
		NULL,
		'fldcamelfi7',
		'Partner',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'optqutxq',
		1684581555250,
		1684581555250,
		NULL,
		'fldcamelfi7',
		'Vendor',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optsgc8w',
		1684655636181,
		1684655636181,
		NULL,
		'fldr3t33atc',
		'Pre Arrival',
		'neutral',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt8ef1v',
		1684655636181,
		1684655636181,
		NULL,
		'fldr3t33atc',
		'First Day',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optjsdp6',
		1684655636181,
		1684655636181,
		NULL,
		'fldr3t33atc',
		'First Week',
		'violet',
		5
	);
INSERT INTO undb_option
VALUES(
		'optgin1z',
		1684655636181,
		1684655636181,
		NULL,
		'fldr3t33atc',
		'First Month',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optlottl',
		1684655636181,
		1684655636181,
		NULL,
		'fldr3t33atc',
		'Onboarded',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optpg4ya',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'Design',
		'orange',
		5
	);
INSERT INTO undb_option
VALUES(
		'optjehd9',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'IT',
		'yellow',
		5
	);
INSERT INTO undb_option
VALUES(
		'optk8vx1',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'Security',
		'fuchsia',
		5
	);
INSERT INTO undb_option
VALUES(
		'opts4ao9',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'Customer Support',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt8h6fl',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'Marketing',
		'red',
		5
	);
INSERT INTO undb_option
VALUES(
		'optz0o9e',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'HR',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt0g9hh',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'Partners',
		'violet',
		5
	);
INSERT INTO undb_option
VALUES(
		'optake1d',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'R&D',
		'sky',
		5
	);
INSERT INTO undb_option
VALUES(
		'optrhqo9',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'Sales',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'opth45w2',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'Operation',
		'pink',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt44dfp',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'Finance',
		'green',
		5
	);
INSERT INTO undb_option
VALUES(
		'optuieaz',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		'Mobile',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'optmelkt',
		1684655636183,
		1684655636183,
		NULL,
		'fld67w65koz',
		' ',
		'neutral',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt4lu2m',
		1684657728406,
		1684657728406,
		NULL,
		'fld38j2aoqw',
		'Done',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optks9w7',
		1684657728406,
		1684657728406,
		NULL,
		'fld38j2aoqw',
		'Working on it',
		'orange',
		5
	);
INSERT INTO undb_option
VALUES(
		'optcarg3',
		1684657728406,
		1684657728406,
		NULL,
		'fld38j2aoqw',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'opttmurc',
		1684657728406,
		1684657728406,
		NULL,
		'fld38j2aoqw',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optlhx0u',
		1684657850773,
		1684657850773,
		NULL,
		'fldmjxybwnt',
		'Done ',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt4ra5l',
		1684657850773,
		1684657850773,
		NULL,
		'fldmjxybwnt',
		'Working on it',
		'orange',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt4la7z',
		1684657850773,
		1684657850773,
		NULL,
		'fldmjxybwnt',
		'stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optqqamc',
		1684657850773,
		1684657850773,
		NULL,
		'fldmjxybwnt',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt0cxih',
		1684657896209,
		1684657896209,
		NULL,
		'fldntjvterl',
		'Done',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt6moby',
		1684657896209,
		1684657896209,
		NULL,
		'fldntjvterl',
		'Working on it',
		'orange',
		5
	);
INSERT INTO undb_option
VALUES(
		'optrxxd8',
		1684657896209,
		1684657896209,
		NULL,
		'fldntjvterl',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt27124',
		1684657896209,
		1684657896209,
		NULL,
		'fldntjvterl',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optap9r0',
		1684657974107,
		1684657974107,
		NULL,
		'fldy60tdkfr',
		'Done',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optz8twl',
		1684657974107,
		1684657974107,
		NULL,
		'fldy60tdkfr',
		'Working on it',
		'orange',
		5
	);
INSERT INTO undb_option
VALUES(
		'optr48gc',
		1684657974107,
		1684657974107,
		NULL,
		'fldy60tdkfr',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optybpi2',
		1684657974107,
		1684657974107,
		NULL,
		'fldy60tdkfr',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optuqbtr',
		1684658017413,
		1684658017413,
		NULL,
		'fld4a04leij',
		'Done',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optzq9lr',
		1684658017413,
		1684658017413,
		NULL,
		'fld4a04leij',
		'Working on it',
		'orange',
		5
	);
INSERT INTO undb_option
VALUES(
		'optukskn',
		1684658017413,
		1684658017413,
		NULL,
		'fld4a04leij',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optsij84',
		1684658017413,
		1684658017413,
		NULL,
		'fld4a04leij',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optj07q2',
		1685174428883,
		1685208283981,
		NULL,
		'fld5dfxirz4',
		'Floor',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optomi94',
		1685174428883,
		1685208283981,
		NULL,
		'fld5dfxirz4',
		'Wood',
		'sky',
		5
	);
INSERT INTO undb_option
VALUES(
		'optzeb02',
		1685174428883,
		1685208283981,
		NULL,
		'fld5dfxirz4',
		'Power tools',
		'teal',
		5
	);
INSERT INTO undb_option
VALUES(
		'optly7nv',
		1685175511799,
		1685175511799,
		NULL,
		'fldx46wrlru',
		'Job completed',
		'green',
		5
	);
INSERT INTO undb_option
VALUES(
		'optk9i7d',
		1685175511799,
		1685175511799,
		NULL,
		'fldx46wrlru',
		'Started',
		'teal',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt52302',
		1685175511799,
		1685175511799,
		NULL,
		'fldx46wrlru',
		'Spec hold',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'optsza72',
		1685175511799,
		1685175511799,
		NULL,
		'fldx46wrlru',
		'Permits',
		'pink',
		5
	);
INSERT INTO undb_option
VALUES(
		'optlb8vh',
		1685175511799,
		1685175511799,
		NULL,
		'fldx46wrlru',
		'Not started',
		'neutral',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt4zm1b',
		1685175632543,
		1685175632543,
		NULL,
		'fldisycq2kk',
		'Done',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt7aexw',
		1685175632543,
		1685175632543,
		NULL,
		'fldisycq2kk',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optij18u',
		1685175632544,
		1685175632544,
		NULL,
		'fldisycq2kk',
		'Working on it',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'optnj1oo',
		1685175632544,
		1685175632544,
		NULL,
		'fldisycq2kk',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optanfm2',
		1685175632544,
		1685175632544,
		NULL,
		'fldisycq2kk',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optj31dv',
		1685175686282,
		1685175686282,
		NULL,
		'fldf3858jba',
		'Done',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optrvet4',
		1685175686282,
		1685175686282,
		NULL,
		'fldf3858jba',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optxwahs',
		1685175686282,
		1685175686282,
		NULL,
		'fldf3858jba',
		'Working on it ',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'optppv4b',
		1685175686282,
		1685175686282,
		NULL,
		'fldf3858jba',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optwxe92',
		1685175686282,
		1685175686282,
		NULL,
		'fldf3858jba',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optta5lv',
		1685175744383,
		1685175744383,
		NULL,
		'fldzcbm7d6f',
		'Done ',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt64gyb',
		1685175744383,
		1685175744383,
		NULL,
		'fldzcbm7d6f',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optuvv04',
		1685175744383,
		1685175744383,
		NULL,
		'fldzcbm7d6f',
		'Working on it ',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'optkz4m0',
		1685175744383,
		1685175744383,
		NULL,
		'fldzcbm7d6f',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt764tj',
		1685175744383,
		1685175744383,
		NULL,
		'fldzcbm7d6f',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optektao',
		1685175795608,
		1685175795608,
		NULL,
		'fldfhnwfm1d',
		'Done ',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt11g61',
		1685175795608,
		1685175795608,
		NULL,
		'fldfhnwfm1d',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optdrqmq',
		1685175795608,
		1685175795608,
		NULL,
		'fldfhnwfm1d',
		'Working on it',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt6eado',
		1685175795608,
		1685175795608,
		NULL,
		'fldfhnwfm1d',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt4fx4b',
		1685175795608,
		1685175795608,
		NULL,
		'fldfhnwfm1d',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optkxfmz',
		1685175846844,
		1685206616994,
		NULL,
		'fld5tprv6oh',
		'Done ',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt7c7d0',
		1685175846844,
		1685206616994,
		NULL,
		'fld5tprv6oh',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optoxmwi',
		1685175846844,
		1685206616994,
		NULL,
		'fld5tprv6oh',
		'Working on it',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'optmrtmx',
		1685175846844,
		1685206616994,
		NULL,
		'fld5tprv6oh',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optafbtz',
		1685175903838,
		1685175903839,
		NULL,
		'fld9k1d6632',
		'Done ',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optjmdk5',
		1685175903839,
		1685175903839,
		NULL,
		'fld9k1d6632',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optiqcmj',
		1685175903839,
		1685175903839,
		NULL,
		'fld9k1d6632',
		'Working on it',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'optif7bj',
		1685175903839,
		1685175903839,
		NULL,
		'fld9k1d6632',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt6ppkq',
		1685175903839,
		1685175903839,
		NULL,
		'fld9k1d6632',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'opti0yh8',
		1685175947059,
		1685175947059,
		NULL,
		'fldqt93dh02',
		'Done ',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optbh9nh',
		1685175947059,
		1685175947059,
		NULL,
		'fldqt93dh02',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optyhmxz',
		1685175947059,
		1685175947059,
		NULL,
		'fldqt93dh02',
		'Working on it ',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt1f0cp',
		1685175947059,
		1685175947059,
		NULL,
		'fldqt93dh02',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optso67j',
		1685175947059,
		1685175947059,
		NULL,
		'fldqt93dh02',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optf25mu',
		1685175995109,
		1685175995109,
		NULL,
		'fldicbkx09x',
		'Done ',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt3icrr',
		1685175995109,
		1685175995109,
		NULL,
		'fldicbkx09x',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt14taz',
		1685175995109,
		1685175995109,
		NULL,
		'fldicbkx09x',
		'Working on it ',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'optq3b2f',
		1685175995109,
		1685175995109,
		NULL,
		'fldicbkx09x',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optfm7cx',
		1685175995109,
		1685175995109,
		NULL,
		'fldicbkx09x',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optbtkxe',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'Job completed',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt4kb70',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'Started',
		'lime',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt7mcm6',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'Drywall',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optz35gg',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'Trench',
		'stone',
		5
	);
INSERT INTO undb_option
VALUES(
		'optoqyxn',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'Framing',
		'violet',
		5
	);
INSERT INTO undb_option
VALUES(
		'optqljvt',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'Spec Hold',
		'orange',
		5
	);
INSERT INTO undb_option
VALUES(
		'optnxz49',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'Electrical',
		'sky',
		5
	);
INSERT INTO undb_option
VALUES(
		'optdbss5',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'Roof',
		'yellow',
		5
	);
INSERT INTO undb_option
VALUES(
		'optj5wxr',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'Foundation',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'optiocxg',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'Permits',
		'pink',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt4zoqs',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'QC ',
		'teal',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt6ik4j',
		1685176415123,
		1685176627939,
		NULL,
		'fldnktdp6ej',
		'Not started',
		'gray',
		5
	);
INSERT INTO undb_option
VALUES(
		'optuay9y',
		1685176480392,
		1685176480392,
		NULL,
		'fldvvjbi1nv',
		'Done',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opthez6f',
		1685176480392,
		1685176480392,
		NULL,
		'fldvvjbi1nv',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'opterqpi',
		1685176480392,
		1685176480392,
		NULL,
		'fldvvjbi1nv',
		'Working on it',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt2obr5',
		1685176480392,
		1685176480392,
		NULL,
		'fldvvjbi1nv',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt3spb0',
		1685176480392,
		1685176480392,
		NULL,
		'fldvvjbi1nv',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'opts4596',
		1685176699721,
		1685176731041,
		NULL,
		'fldzpcp0ouz',
		'Done',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optr2s1n',
		1685176699721,
		1685176731041,
		NULL,
		'fldzpcp0ouz',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'opto18a9',
		1685176699721,
		1685176731041,
		NULL,
		'fldzpcp0ouz',
		'Working on it',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt7t6s7',
		1685176699721,
		1685176731041,
		NULL,
		'fldzpcp0ouz',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt8j66y',
		1685176699721,
		1685176731041,
		NULL,
		'fldzpcp0ouz',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optu5jkw',
		1685176806350,
		1685176806350,
		NULL,
		'fld749c7m6l',
		'Done',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optrbpqo',
		1685176806350,
		1685176806350,
		NULL,
		'fld749c7m6l',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optnd614',
		1685176806350,
		1685176806350,
		NULL,
		'fld749c7m6l',
		'Working on it',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'optjhxby',
		1685176806350,
		1685176806350,
		NULL,
		'fld749c7m6l',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt2hdx6',
		1685176806350,
		1685176806350,
		NULL,
		'fld749c7m6l',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optqfwlt',
		1685176882333,
		1685176882333,
		NULL,
		'fld8uonlrvg',
		'Done ',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optmp0hm',
		1685176882333,
		1685176882333,
		NULL,
		'fld8uonlrvg',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'opta8zon',
		1685176882333,
		1685176882333,
		NULL,
		'fld8uonlrvg',
		'Working on it ',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'opty4yq3',
		1685176882333,
		1685176882333,
		NULL,
		'fld8uonlrvg',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optop6j7',
		1685176882333,
		1685176882333,
		NULL,
		'fld8uonlrvg',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optkns23',
		1685176942078,
		1685176942078,
		NULL,
		'fld6r6a1hc9',
		'Done ',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt4h4tt',
		1685176942078,
		1685176942078,
		NULL,
		'fld6r6a1hc9',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt20hse',
		1685176942078,
		1685176942078,
		NULL,
		'fld6r6a1hc9',
		'Working on it',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt2gr6e',
		1685176942078,
		1685176942078,
		NULL,
		'fld6r6a1hc9',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optp5i9p',
		1685176942078,
		1685176942078,
		NULL,
		'fld6r6a1hc9',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optjtq7x',
		1685176994753,
		1685176994753,
		NULL,
		'fld19p1ahm5',
		'Done',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt7i90b',
		1685176994753,
		1685176994753,
		NULL,
		'fld19p1ahm5',
		'Planned',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optbs3h7',
		1685176994753,
		1685176994753,
		NULL,
		'fld19p1ahm5',
		'Working on it',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'opteyf9n',
		1685176994753,
		1685176994753,
		NULL,
		'fld19p1ahm5',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optbi25l',
		1685176994753,
		1685176994753,
		NULL,
		'fld19p1ahm5',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt530jq',
		1685177111305,
		1685177111305,
		NULL,
		'fldtdqxqkhr',
		'Delayed by vendor',
		'yellow',
		5
	);
INSERT INTO undb_option
VALUES(
		'optk9tdr',
		1685177111305,
		1685177111305,
		NULL,
		'fldtdqxqkhr',
		'Delayed by builders',
		'red',
		5
	);
INSERT INTO undb_option
VALUES(
		'opttf21e',
		1685177111305,
		1685177111305,
		NULL,
		'fldtdqxqkhr',
		'Awaiting review',
		'teal',
		5
	);
INSERT INTO undb_option
VALUES(
		'optnna94',
		1685177111305,
		1685177111305,
		NULL,
		'fldtdqxqkhr',
		'Done',
		'lime',
		5
	);
INSERT INTO undb_option
VALUES(
		'optsfrkz',
		1685177111305,
		1685177111305,
		NULL,
		'fldtdqxqkhr',
		' ',
		'gray',
		5
	);
INSERT INTO undb_option
VALUES(
		'optjzp08',
		1685177668674,
		1685177668674,
		NULL,
		'fldn3txeox5',
		'Done',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optnqa4l',
		1685177668674,
		1685177668674,
		NULL,
		'fldn3txeox5',
		'In progress',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt8g1l1',
		1685177668674,
		1685177668674,
		NULL,
		'fldn3txeox5',
		'Stuck',
		'rose',
		5
	);
INSERT INTO undb_option
VALUES(
		'optkcpbu',
		1685177668674,
		1685177668674,
		NULL,
		'fldn3txeox5',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optbywmt',
		1685178477325,
		1685209414212,
		NULL,
		'fldw0xhn5du',
		'In construction',
		'blue',
		5
	);
INSERT INTO undb_option
VALUES(
		'optegnto',
		1685178477325,
		1685209414212,
		NULL,
		'fldw0xhn5du',
		'In quality control',
		'emerald',
		5
	);
INSERT INTO undb_option
VALUES(
		'optt4gtr',
		1685178477325,
		1685209414212,
		NULL,
		'fldw0xhn5du',
		'Done',
		'lime',
		5
	);
INSERT INTO undb_option
VALUES(
		'optxuzzu',
		1685178477325,
		1685209414212,
		NULL,
		'fldw0xhn5du',
		'Not stated',
		'gray',
		5
	);
INSERT INTO undb_option
VALUES(
		'optzzqb3',
		1685206616993,
		1685206616993,
		NULL,
		'fld5tprv6oh',
		'Delayed',
		'orange',
		5
	);
INSERT INTO undb_option
VALUES(
		'opto7jfx',
		1685206616993,
		1685206616993,
		NULL,
		'fld5tprv6oh',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt5jwgs',
		1685208283980,
		1685208283980,
		NULL,
		'fld5dfxirz4',
		'Carpeting',
		'amber',
		5
	);
INSERT INTO undb_option
VALUES(
		'opthy6me',
		1685208283980,
		1685208283980,
		NULL,
		'fld5dfxirz4',
		'Done',
		'lime',
		5
	);
INSERT INTO undb_option
VALUES(
		'optuous4',
		1685208283980,
		1685208283980,
		NULL,
		'fld5dfxirz4',
		'Cleaning',
		'violet',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt44e5z',
		1685208283980,
		1685208283980,
		NULL,
		'fld5dfxirz4',
		'Measuring',
		'yellow',
		5
	);
INSERT INTO undb_option
VALUES(
		'opt8eiob',
		1685208283980,
		1685208283980,
		NULL,
		'fld5dfxirz4',
		' ',
		'slate',
		5
	);
INSERT INTO undb_option
VALUES(
		'optednbl',
		1685210615474,
		1685210615474,
		NULL,
		'fldmv3t03kj',
		'Structural subcontractors',
		'sky',
		5
	);
INSERT INTO undb_option
VALUES(
		'optqe1bf',
		1685210615474,
		1685210615474,
		NULL,
		'fldmv3t03kj',
		'Service subcontractors',
		'violet',
		5
	);
CREATE TABLE `undb_attachment` (
	`id` text not null,
	`record_id` text not null,
	`field_id` text not null,
	`created_at` datetime not null,
	`updated_at` datetime not null,
	`deleted_at` datetime null,
	`table_id` text not null,
	`mime_type` text not null,
	`name` text not null,
	`size` integer not null,
	`token` text not null,
	`url` text not null,
	`extension` text not null,
	constraint `undb_attachment_table_id_foreign` foreign key(`table_id`) references `undb_table`(`id`) on update cascade,
	primary key (`id`, `record_id`, `field_id`)
);
CREATE TABLE `undb_field_display_fields` (
	`field_1_id` text not null,
	`field_2_id` text not null,
	constraint `undb_field_display_fields_field_1_id_foreign` foreign key(`field_1_id`) references `undb_field`(`id`) on delete cascade on update cascade,
	constraint `undb_field_display_fields_field_2_id_foreign` foreign key(`field_2_id`) references `undb_field`(`id`) on delete cascade on update cascade,
	primary key (`field_1_id`, `field_2_id`)
);
INSERT INTO undb_field_display_fields
VALUES('fld5vld4clt', 'fldel2i4v7v');
INSERT INTO undb_field_display_fields
VALUES('fldn8qkrzwi', 'fldrlmpebtz');
INSERT INTO undb_field_display_fields
VALUES('fld6pd0v553', 'fldrlmpebtz');
INSERT INTO undb_field_display_fields
VALUES('fld5kzdse27', 'fldrlmpebtz');
INSERT INTO undb_field_display_fields
VALUES('fld5kzdse27', 'fldo4mvc3bq');
INSERT INTO undb_field_display_fields
VALUES('fldlosp8skm', 'fldvpb5tbbc');
INSERT INTO undb_field_display_fields
VALUES('fld7a5vkk4j', 'fldamnv8ghw');
INSERT INTO undb_field_display_fields
VALUES('fldfpeufgq3', 'fld0gmmj29q');
INSERT INTO undb_field_display_fields
VALUES('fldmz9qd18u', 'fld7m4e9dbz');
INSERT INTO undb_field_display_fields
VALUES('fldmz9qd18u', 'fldvi5kqyg9');
INSERT INTO undb_field_display_fields
VALUES('fld56n18njt', 'fldamnv8ghw');
INSERT INTO undb_field_display_fields
VALUES('fld9jfgs4po', 'fldamnv8ghw');
INSERT INTO undb_field_display_fields
VALUES('fldyldbx3am', 'fldf5jx5k3p');
INSERT INTO undb_field_display_fields
VALUES('fld7u72oymt', 'fldf5jx5k3p');
INSERT INTO undb_field_display_fields
VALUES('fldifd9g29a', 'flds9gyvh1y');
INSERT INTO undb_field_display_fields
VALUES('fldqetskkmf', 'flds9gyvh1y');
INSERT INTO undb_field_display_fields
VALUES('fldzhfhodco', 'fld5vejsyk6');
INSERT INTO undb_field_display_fields
VALUES('fld4h9alzho', 'fldi3ctnklu');
INSERT INTO undb_field_display_fields
VALUES('fldome9lb5l', 'flds9gyvh1y');
INSERT INTO undb_field_display_fields
VALUES('fldc7e9bf2j', 'flds9gyvh1y');
INSERT INTO undb_field_display_fields
VALUES('fldft7edqw6', 'fld3nlurfbt');
INSERT INTO undb_field_display_fields
VALUES('fldh0blyv2m', 'fld3nlurfbt');
INSERT INTO undb_field_display_fields
VALUES('fldq5ohh7hx', 'fldhrrqqlqh');
INSERT INTO undb_field_display_fields
VALUES('fldtnny9yk9', 'fldhrrqqlqh');
CREATE TABLE `undb_user` (
	`id` text not null,
	`created_at` datetime not null,
	`updated_at` datetime not null,
	`deleted_at` datetime null,
	`avatar` text null,
	`username` text not null,
	`email` text not null,
	`password` text not null,
	`color` text not null default 'blue',
	primary key (`id`)
);
INSERT INTO undb_user
VALUES(
		'usrzvhv8srb',
		1684576050811,
		1684576050811,
		NULL,
		NULL,
		'wanshufen',
		'wanshufen@gmail.com',
		'$2b$10$WWb61jyIP.k2diCCHVwcWOAm5xigGGu8sV5/NZpqB.9X5rme/v68u',
		'blue'
	);
INSERT INTO undb_user
VALUES(
		'usrbuajh55q',
		1684934839996,
		1684934839996,
		NULL,
		NULL,
		'test',
		'test@example.com',
		'$2b$10$k4YCl8rqxWHS4TrTA99q6u7Y1.8BOmXJ2z5ndGHO/CsEiCmYqbX2y',
		'rose'
	);
CREATE TABLE `undb_visualization` (
	`id` text not null,
	`created_at` datetime not null,
	`updated_at` datetime not null,
	`deleted_at` datetime null,
	`name` text not null,
	`type` text not null,
	`table_id` text null,
	`number_aggregate_function` text null,
	`field_id` text null,
	`chart_aggregate_function` text null,
	`chart_type` text null,
	constraint `undb_visualization_table_id_foreign` foreign key(`table_id`) references `undb_table`(`id`) on delete cascade on update cascade,
	primary key (`id`)
);
INSERT INTO undb_visualization
VALUES(
		'vir5353gfgf',
		1684661009070,
		1684661009070,
		NULL,
		'柱状图',
		'chart',
		'tbl2za35hbg',
		NULL,
		'fldr3t33atc',
		'count',
		'bar'
	);
INSERT INTO undb_visualization
VALUES(
		'virc6ae7eok',
		1684661041511,
		1684661041511,
		NULL,
		'计数',
		'number',
		'tbl2za35hbg',
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_visualization
VALUES(
		'vir4qvwxtmp',
		1684661047519,
		1684661054377,
		NULL,
		'柱状图',
		'chart',
		'tbl2za35hbg',
		NULL,
		'fld67w65koz',
		'count',
		'bar'
	);
INSERT INTO undb_visualization
VALUES(
		'vir585o7pkz',
		1684661061383,
		1684661068653,
		NULL,
		'柱状图',
		'chart',
		'tbl2za35hbg',
		NULL,
		'fld67w65koz',
		'count',
		'bar'
	);
INSERT INTO undb_visualization
VALUES(
		'virb9on838g',
		1685212280579,
		1685212280579,
		NULL,
		'count',
		'number',
		'tblpgqt9f8e',
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_visualization
VALUES(
		'virzb9fl06p',
		1685212286590,
		1685212286590,
		NULL,
		'bar',
		'chart',
		'tblpgqt9f8e',
		NULL,
		'fld5dfxirz4',
		'count',
		'bar'
	);
INSERT INTO undb_visualization
VALUES(
		'virgvhmfl7y',
		1685213070188,
		1685213070188,
		NULL,
		'count',
		'number',
		'tblfx77neny',
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO undb_visualization
VALUES(
		'virsfzcdnjb',
		1685213092660,
		1685213092660,
		NULL,
		'bar',
		'chart',
		'tblfx77neny',
		NULL,
		'fldx46wrlru',
		'count',
		'bar'
	);
INSERT INTO undb_visualization
VALUES(
		'virg85utg7b',
		1685213148218,
		1685213148218,
		NULL,
		'bar',
		'chart',
		'tblpgqt9f8e',
		NULL,
		'fld5dfxirz4',
		'count',
		'bar'
	);
INSERT INTO undb_visualization
VALUES(
		'vir8md89zv2',
		1685213181402,
		1685213181402,
		NULL,
		'bar',
		'chart',
		'tblk4h9pgm7',
		NULL,
		'fldnktdp6ej',
		'count',
		'bar'
	);
CREATE TABLE `undb_widget` (
	`id` text not null,
	`created_at` datetime not null,
	`updated_at` datetime not null,
	`deleted_at` datetime null,
	`layout` json not null,
	`view_id` text not null,
	`visualization_id` text null,
	constraint `undb_widget_view_id_foreign` foreign key(`view_id`) references `undb_view`(`id`) on update cascade,
	constraint `undb_widget_visualization_id_foreign` foreign key(`visualization_id`) references `undb_visualization`(`id`) on delete
	set null on update cascade,
		primary key (`id`)
);
INSERT INTO undb_widget
VALUES(
		'wid2c1qxm9o',
		1684661009070,
		1684661085400,
		NULL,
		'{"x":0,"y":0,"h":4,"w":6}',
		'viw3qge14qx',
		'vir5353gfgf'
	);
INSERT INTO undb_widget
VALUES(
		'wide8odhgnl',
		1684661041511,
		1684661045009,
		1684661045009,
		'{"x":6,"y":0,"h":2,"w":6}',
		'viw3qge14qx',
		'virc6ae7eok'
	);
INSERT INTO undb_widget
VALUES(
		'widue819e88',
		1684661047519,
		1684661085400,
		NULL,
		'{"x":6,"y":0,"h":4,"w":6}',
		'viw3qge14qx',
		'vir4qvwxtmp'
	);
INSERT INTO undb_widget
VALUES(
		'widtbx3szzn',
		1684661061383,
		1684661085371,
		1684661085370,
		'{"x":12,"y":0,"h":4,"w":6}',
		'viw3qge14qx',
		'vir585o7pkz'
	);
INSERT INTO undb_widget
VALUES(
		'wid9h5d15xe',
		1685212280579,
		1685212280579,
		NULL,
		'{"x":0,"y":0,"h":2,"w":6}',
		'viwbcscykkd',
		'virb9on838g'
	);
INSERT INTO undb_widget
VALUES(
		'widmi10cpau',
		1685212286590,
		1685212286590,
		NULL,
		'{"x":6,"y":0,"h":4,"w":6}',
		'viwbcscykkd',
		'virzb9fl06p'
	);
INSERT INTO undb_widget
VALUES(
		'widdejx6woo',
		1685213070188,
		1685213070188,
		NULL,
		'{"x":0,"y":0,"h":2,"w":6}',
		'viwoxmuxqte',
		'virgvhmfl7y'
	);
INSERT INTO undb_widget
VALUES(
		'widbzd1xggl',
		1685213092659,
		1685213092659,
		NULL,
		'{"x":6,"y":0,"h":4,"w":6}',
		'viwoxmuxqte',
		'virsfzcdnjb'
	);
INSERT INTO undb_widget
VALUES(
		'widobnuj5w9',
		1685213148218,
		1685213148218,
		NULL,
		'{"x":0,"y":0,"h":4,"w":6}',
		'viwab1ycczl',
		'virg85utg7b'
	);
INSERT INTO undb_widget
VALUES(
		'widbbypud7z',
		1685213181402,
		1685213181402,
		NULL,
		'{"x":0,"y":0,"h":4,"w":6}',
		'viwufxtr4ao',
		'vir8md89zv2'
	);
CREATE TABLE IF NOT EXISTS "undb_view" (
	`id` text NOT NULL,
	`created_at` datetime NOT NULL,
	`updated_at` datetime NOT NULL,
	`deleted_at` datetime NULL,
	`table_id` text NULL,
	`name` text NOT NULL,
	`show_system_fields` integer NOT NULL DEFAULT false,
	`display_type` text check (
		`display_type` in (
			'kanban',
			'calendar',
			'grid',
			'tree',
			'dashboard'
		)
	) NOT NULL CHECK (
		`display_type` in(
			'kanban',
			'calendar',
			'grid',
			'tree',
			'dashboard'
		)
	),
	`sorts` json NULL,
	`kanban_field_id` text NULL,
	`calendar_field_id` text NULL,
	`tree_field_id` text NULL,
	`filter` json NULL,
	`field_options` json NULL,
	`fields_order` text NULL,
	`pinned_fields` json NULL,
	`row_height` text NULL CHECK (`row_height` in('short', 'medium', 'tall')),
	CONSTRAINT `undb_view_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `undb_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (`id`)
);
INSERT INTO undb_view
VALUES(
		'viwnxi5l3qi',
		1684577267431,
		1685265723802,
		NULL,
		'tbl4undb0lh',
		'Deal Tracker',
		1,
		'grid',
		NULL,
		'fld4sf2mdr8',
		'fldjyupbqlm',
		NULL,
		NULL,
		'{"fld8ql20jlm":{"hidden":false},"fld7vd9ir75":{"hidden":true}}',
		'fldopx87187,fld7m4e9dbz,fld4sf2mdr8,fldx5w2pcft,fldtefbcm18,fld5vld4clt,fldghc0rw09,fldvi5kqyg9,fldjyupbqlm,fldqpn61v8h,fld2u4gkap9,fld7vd9ir75,fld8ql20jlm,fldxq7kp4eu',
		'{"left":["fld7m4e9dbz"],"right":[]}',
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viw1f88x075',
		1684577324094,
		1685265889967,
		NULL,
		'tblramxgp7z',
		'Contacts',
		1,
		'grid',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'{"fldconkpc7g":{"hidden":true},"fld7smzf5np":{"hidden":true},"fldelspnzaq":{"hidden":true},"fldpkr0phjz":{"hidden":true}}',
		'flderd3a3rc,fldel2i4v7v,fldconkpc7g,fld7smzf5np,fldelspnzaq,fldpkr0phjz,fldmz9qd18u,fldcamelfi7,fld7a5vkk4j,fldqojjbrau,fldpq4mvj6c,fldtgvzjaoj,fldysr6gonr,fld3wri112p,fldqo1swr94,fldgbowxfbc',
		'{"left":["fldel2i4v7v"],"right":[]}',
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viw70p8od12',
		1684597096588,
		1684938111182,
		NULL,
		'tblwqjcq0x8',
		'Company',
		0,
		'grid',
		NULL,
		NULL,
		NULL,
		'fld56n18njt',
		NULL,
		NULL,
		'fldzfu3x1ft,fldo4mvc3bq,fldozbddvfk,fldapuzxp1y,fldurfpiosy,fld2mh42tvf,fldrjp6v8xl,fldlosp8skm,fldamnv8ghw',
		'{"left":["fldo4mvc3bq"],"right":[]}',
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viw9p12yoag',
		1684599288325,
		1684599288325,
		NULL,
		'tbl4ezqb49a',
		'Title',
		0,
		'grid',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viw3qge14qx',
		1684655636183,
		1685213011118,
		NULL,
		'tbl2za35hbg',
		'Employee onboarding',
		0,
		'grid',
		NULL,
		'fldr3t33atc',
		'fldui7hrx2t',
		NULL,
		NULL,
		NULL,
		'fldo6wz3szd,fldskwotpjg,fldr3t33atc,fldd55dsm2m,fldxx0cyu8w,fldqjxpupfu,fld19njyj50,fld67w65koz,fld92yn7hcf,fldyxr4fgcj,fld52ryjekr,fldwbr3sb09,fldfpeufgq3,fldui7hrx2t,fld38j2aoqw,fldmjxybwnt,fldntjvterl,fldu3ll00ho,fldy60tdkfr,fld4a04leij,fldng2e0uhl,fldkd8gvemb,fld5pgga2xx',
		'{"left":["fldskwotpjg"],"right":[]}',
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viw2j74tv49',
		1684655754437,
		1685265668630,
		NULL,
		'tblruubokdc',
		'Employees',
		1,
		'grid',
		NULL,
		NULL,
		NULL,
		'fldq5ohh7hx',
		NULL,
		'{"fldhrrqqlqh":{"hidden":false},"fldjrqmbjni":{"hidden":true},"fldgt1q5u09":{"hidden":true},"fld462h34dx":{"hidden":true},"fldzpxkf4wc":{"hidden":true}}',
		'fldh65rro60,fldhrrqqlqh,fld0gmmj29q,fldjrqmbjni,fldgt1q5u09,fld462h34dx,fldzpxkf4wc,fld3814mrgg,fldylxmreki,fldq5ohh7hx,fldtnny9yk9',
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viws2429fm1',
		1685172790221,
		1685212314492,
		NULL,
		'tblk4h9pgm7',
		'Project details',
		0,
		'grid',
		'[{"fieldId":"fldtq3ctq2v","direction":"asc"}]',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldz1tn18w7,fldtq3ctq2v,fldy5jci1it,fldbjwrkl4w,fldlad9mr00,flds9gyvh1y,fld1zc9irou,fldnktdp6ej,flds4gpji6k,fldvvjbi1nv,fld7m1scjcc,fldzpcp0ouz,fld7iz2x2bs,fld749c7m6l,fld22ldcbag,fld8uonlrvg,fld6xpgey7o,fld6r6a1hc9,fld19p1ahm5,fldtdqxqkhr,fldzhfhodco,flde0medsct,fld5dje464n,fldn3txeox5,fldy4xklvtp,fld4h9alzho,fldw0xhn5du',
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwdia22qi1',
		1685174072672,
		1685174177426,
		1685174177426,
		'tblk4h9pgm7',
		'视图 2',
		0,
		'tree',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldz1tn18w7,fldf5jx5k3p,fldtq3ctq2v,fldy5jci1it,fldbjwrkl4w,fldlad9mr00,fld7u72oymt,fldyldbx3am',
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwb3fp8xs2',
		1685174186434,
		1685174275023,
		1685174275023,
		'tblk4h9pgm7',
		'view 2',
		0,
		'tree',
		NULL,
		NULL,
		NULL,
		'fld7u72oymt',
		NULL,
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwgtqmkuso',
		1685174348988,
		1685210615477,
		NULL,
		'tblpgqt9f8e',
		'Subcontractors',
		0,
		'grid',
		'[{"fieldId":"fldp18kok8t","direction":"asc"}]',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldja1i3sed,fld5vejsyk6,fld8yjkgwax,fldp18kok8t,fldrl3wtwgi,fldjjk7jq88,fldrf5tre1y,fld5dfxirz4,fldin0o52s2,fld234mahi3,fldknol0wfv,flda93at8lf,fldqetskkmf,fldmv3t03kj',
		'{"left":["fld5vejsyk6"],"right":[]}',
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwdhyehe16',
		1685174750727,
		1685209705618,
		NULL,
		'tblfx77neny',
		'Project overview',
		0,
		'grid',
		'[{"fieldId":"fldz6ialch3","direction":"asc"}]',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fld2z8lm0nq,fldi3ctnklu,fldz6ialch3,fldldugufai,fld6ipbvk1v,fldq4vl65vq,fldxgzu2rfm,fldxjfi8nvf,fldx46wrlru,fldisycq2kk,fldf3858jba,fldzcbm7d6f,fldfhnwfm1d,fld5tprv6oh,fld9k1d6632,fldqt93dh02,fldicbkx09x,fldrwyxeapl,fldifd9g29a',
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viw7p200nda',
		1685178004172,
		1685212657183,
		1685212657182,
		'tblk4h9pgm7',
		'view 2',
		0,
		'tree',
		NULL,
		NULL,
		NULL,
		'fldome9lb5l',
		NULL,
		NULL,
		'fldz1tn18w7,fldtq3ctq2v,fldy5jci1it,fldbjwrkl4w,fldlad9mr00,flds9gyvh1y,fld1zc9irou,fldnktdp6ej,flds4gpji6k,fldvvjbi1nv,fld7m1scjcc,fldzpcp0ouz,fld7iz2x2bs,fld749c7m6l,fld22ldcbag,fld8uonlrvg,fld6xpgey7o,fld6r6a1hc9,fld19p1ahm5,fldtdqxqkhr,fldzhfhodco,flde0medsct,fld5dje464n,fldn3txeox5,fldy4xklvtp,fld4h9alzho,fldw0xhn5du',
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwdec4oi8c',
		1685178619603,
		1685178638997,
		NULL,
		'tblq36e537c',
		'test',
		0,
		'grid',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldgevznri1,fld3nlurfbt,fldgx3uro1u,fldhrtgoei0,flduskdkw7q,fldbti1u8mz,fldft7edqw6,fldh0blyv2m',
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwimtmwzd0',
		1685212064373,
		1685212097462,
		NULL,
		'tblpgqt9f8e',
		'Structural subcontractors',
		0,
		'grid',
		NULL,
		NULL,
		NULL,
		NULL,
		'[{"type":"select","operator":"$eq","value":"optednbl","path":"fldmv3t03kj"}]',
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwbcscykkd',
		1685212115250,
		1685212273465,
		NULL,
		'tblpgqt9f8e',
		'Service subcontractors',
		0,
		'dashboard',
		NULL,
		NULL,
		'flda93at8lf',
		NULL,
		'[{"type":"select","operator":"$eq","value":"optqe1bf","path":"fldmv3t03kj"}]',
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viw1hmtgok8',
		1685212659128,
		1685212689119,
		NULL,
		'tblk4h9pgm7',
		'In construction',
		0,
		'grid',
		NULL,
		NULL,
		NULL,
		NULL,
		'[{"type":"select","operator":"$eq","value":"optbywmt","path":"fldw0xhn5du"}]',
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viw2oflfayp',
		1685212693254,
		1685212716697,
		NULL,
		'tblk4h9pgm7',
		'In quality control',
		0,
		'grid',
		NULL,
		NULL,
		NULL,
		NULL,
		'[{"type":"select","operator":"$eq","value":"optegnto","path":"fldw0xhn5du"}]',
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viw1afphzlj',
		1685212726951,
		1685212751699,
		NULL,
		'tblk4h9pgm7',
		'Done',
		0,
		'grid',
		NULL,
		NULL,
		NULL,
		NULL,
		'[{"type":"select","operator":"$eq","value":"optt4gtr","path":"fldw0xhn5du"}]',
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwv5pxkvis',
		1685212754386,
		1685212797704,
		NULL,
		'tblk4h9pgm7',
		'Not stated',
		0,
		'grid',
		'[{"fieldId":"fldtq3ctq2v","direction":"asc"}]',
		NULL,
		NULL,
		NULL,
		'[{"type":"select","operator":"$eq","value":"optxuzzu","path":"fldw0xhn5du"}]',
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwbbwf8skf',
		1685212836798,
		1685212840874,
		1685212840874,
		'tblq36e537c',
		'test',
		0,
		'grid',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldgevznri1,fld3nlurfbt,fldgx3uro1u,fldhrtgoei0,flduskdkw7q,fldbti1u8mz,fldft7edqw6,fldh0blyv2m',
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viw44oqpmyw',
		1685212842696,
		1685212845932,
		1685212845932,
		'tblq36e537c',
		'test',
		0,
		'grid',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'fldgevznri1,fld3nlurfbt,fldgx3uro1u,fldhrtgoei0,flduskdkw7q,fldbti1u8mz,fldft7edqw6,fldh0blyv2m',
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwkwz6g9js',
		1685212891474,
		1685212908236,
		1685212908235,
		'tbl4undb0lh',
		'view 2',
		0,
		'calendar',
		NULL,
		NULL,
		'fldjyupbqlm',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viw64ia4fxz',
		1685212912411,
		1685265828391,
		NULL,
		'tbl4undb0lh',
		'Board',
		0,
		'kanban',
		NULL,
		'fld4sf2mdr8',
		NULL,
		NULL,
		'[{"type":"created-by","operator":"$eq","value":"usrbuajh55q","path":"fldx5w2pcft"}]',
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwmc5m5646',
		1685212920300,
		1685212985426,
		NULL,
		'tbl4undb0lh',
		'New',
		0,
		'grid',
		NULL,
		NULL,
		NULL,
		NULL,
		'[{"type":"select","operator":"$eq","value":"optuo8m1","path":"fld4sf2mdr8"}]',
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwoxmuxqte',
		1685213067197,
		1685213067197,
		NULL,
		'tblfx77neny',
		'view 2',
		0,
		'dashboard',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwab1ycczl',
		1685213145496,
		1685213145496,
		NULL,
		'tblpgqt9f8e',
		'view 4',
		0,
		'dashboard',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwe6cxqgup',
		1685213158771,
		1685213163305,
		NULL,
		'tblpgqt9f8e',
		'view 5',
		0,
		'kanban',
		NULL,
		'fld5dfxirz4',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwufxtr4ao',
		1685213176903,
		1685213176903,
		NULL,
		'tblk4h9pgm7',
		'view 6',
		0,
		'dashboard',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		'short'
	);
INSERT INTO undb_view
VALUES(
		'viwbo3rzlbe',
		1685265649317,
		1685265971335,
		NULL,
		'tblruubokdc',
		'Tree',
		0,
		'tree',
		NULL,
		NULL,
		NULL,
		'fldq5ohh7hx',
		NULL,
		NULL,
		NULL,
		NULL,
		'short'
	);
CREATE TABLE `tbl4undb0lh` (
	`auto_increment` integer not null primary key autoincrement,
	`id` varchar(255) not null,
	`created_at` datetime not null default CURRENT_TIMESTAMP,
	`created_by` varchar(255) not null,
	`updated_at` datetime not null default CURRENT_TIMESTAMP,
	`updated_by` varchar(255) not null,
	`deleted_at` datetime null,
	`deleted_by` varchar(255),
	`fld7m4e9dbz` varchar(255),
	`fld4sf2mdr8` varchar(255),
	`fldghc0rw09` varchar(255),
	`fldjyupbqlm_from` datetime,
	`fldjyupbqlm_to` datetime,
	`fld0f8xaf8q` float,
	`fldqpn61v8h` datetime,
	`fld2u4gkap9` datetime,
	`fldvi5kqyg9` float
);
INSERT INTO tbl4undb0lh
VALUES(
		1,
		'recf03f2mz9',
		'2023-05-20 16:07:55',
		'usrzvhv8srb',
		'2023-05-24 13:30:02',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 1',
		'optapz93',
		'opty4o0z',
		'2023-05-16T16:00:00.000Z',
		'2023-06-29T16:00:00.000Z',
		10000.0,
		NULL,
		'2023-05-16T16:00:00.000Z',
		3000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		2,
		'recjpd9hcvj',
		'2023-05-20 16:21:05',
		'usrzvhv8srb',
		'2023-05-24 13:30:09',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 2',
		'opts4t4w',
		'optua38g',
		'2023-05-03T16:00:00.000Z',
		'2023-07-26T16:00:00.000Z',
		26000.0,
		NULL,
		'2023-05-03T16:00:00.000Z',
		26000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		3,
		'rec1mp03meb',
		'2023-05-20 16:22:31',
		'usrzvhv8srb',
		'2023-05-24 13:30:15',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 3',
		'optdczmv',
		'opt68d8z',
		'2023-01-05T16:00:00.000Z',
		'2023-05-11T16:00:00.000Z',
		37000.0,
		'2023-05-11T16:00:00.000Z',
		'2023-01-05T16:00:00.000Z',
		37000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		4,
		'rec4cxfpnno',
		'2023-05-20 16:23:26',
		'usrzvhv8srb',
		'2023-05-24 13:30:21',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 4',
		'optuo8m1',
		'optua38g',
		'2023-05-29T16:00:00.000Z',
		'2024-01-30T16:00:00.000Z',
		100000.0,
		NULL,
		'2023-05-18T16:00:00.000Z',
		100000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		5,
		'recvr6i19an',
		'2023-05-24 13:36:15',
		'usrbuajh55q',
		'2023-05-24 13:36:26',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 5',
		'opteh974',
		'opty4o0z',
		'2023-05-23T16:00:00.000Z',
		'2023-11-23T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-23T16:00:00.000Z',
		9500.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		6,
		'recbo0p7q5c',
		'2023-05-24 14:10:30',
		'usrbuajh55q',
		'2023-05-24 14:10:55',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 6',
		'opts4t4w',
		'opty4o0z',
		'2023-05-10T16:00:00.000Z',
		'2023-10-24T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-10T16:00:00.000Z',
		10000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		7,
		'recll6gqgft',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 3',
		'optdczmv',
		'opt68d8z',
		'2023-01-05T16:00:00.000Z',
		'2023-05-11T16:00:00.000Z',
		NULL,
		'2023-05-11T16:00:00.000Z',
		'2023-01-05T16:00:00.000Z',
		37000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		8,
		'rec3rjjcwnp',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 4',
		'optuo8m1',
		'optua38g',
		'2023-05-29T16:00:00.000Z',
		'2024-01-30T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-18T16:00:00.000Z',
		100000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		9,
		'rec7c7cmxtg',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 6',
		'opts4t4w',
		'opty4o0z',
		'2023-05-10T16:00:00.000Z',
		'2023-10-24T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-10T16:00:00.000Z',
		10000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		10,
		'recdhn2g0rx',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 1',
		'optapz93',
		'opty4o0z',
		'2023-05-16T16:00:00.000Z',
		'2023-06-29T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-16T16:00:00.000Z',
		3000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		11,
		'reci5wlyz4x',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 2',
		'opts4t4w',
		'optua38g',
		'2023-05-03T16:00:00.000Z',
		'2023-07-26T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-03T16:00:00.000Z',
		26000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		12,
		'reczr96nh4u',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		'2023-05-27 18:41:13',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 5',
		'opteh974',
		'opty4o0z',
		'2023-05-23T16:00:00.000Z',
		'2023-11-23T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-23T16:00:00.000Z',
		9500.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		13,
		'rec29ubkfhs',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 3',
		'optdczmv',
		'opt68d8z',
		'2023-01-05T16:00:00.000Z',
		'2023-05-11T16:00:00.000Z',
		NULL,
		'2023-05-11T16:00:00.000Z',
		'2023-01-05T16:00:00.000Z',
		37000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		14,
		'recotkwjqbx',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 4',
		'optuo8m1',
		'optua38g',
		'2023-05-29T16:00:00.000Z',
		'2024-01-30T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-18T16:00:00.000Z',
		100000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		15,
		'recyvrgke91',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 4',
		'optuo8m1',
		'optua38g',
		'2023-05-29T16:00:00.000Z',
		'2024-01-30T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-18T16:00:00.000Z',
		100000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		16,
		'recag7todql',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 6',
		'opts4t4w',
		'opty4o0z',
		'2023-05-10T16:00:00.000Z',
		'2023-10-24T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-10T16:00:00.000Z',
		10000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		17,
		'recq9k9x3sq',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 6',
		'opts4t4w',
		'opty4o0z',
		'2023-05-10T16:00:00.000Z',
		'2023-10-24T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-10T16:00:00.000Z',
		10000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		18,
		'recsiu01ui6',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 1',
		'optapz93',
		'opty4o0z',
		'2023-05-16T16:00:00.000Z',
		'2023-06-29T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-16T16:00:00.000Z',
		3000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		19,
		'recg8yzwyrt',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 1',
		'optapz93',
		'opty4o0z',
		'2023-05-16T16:00:00.000Z',
		'2023-06-29T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-16T16:00:00.000Z',
		3000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		20,
		'rec7rb8xkey',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 2',
		'opts4t4w',
		'optua38g',
		'2023-05-03T16:00:00.000Z',
		'2023-07-26T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-03T16:00:00.000Z',
		26000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		21,
		'recy7j5vxfl',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 2',
		'opts4t4w',
		'optua38g',
		'2023-05-03T16:00:00.000Z',
		'2023-07-26T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-03T16:00:00.000Z',
		26000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		22,
		'rec2vi6q7v7',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 3',
		'optdczmv',
		'opt68d8z',
		'2023-01-05T16:00:00.000Z',
		'2023-05-11T16:00:00.000Z',
		NULL,
		'2023-05-11T16:00:00.000Z',
		'2023-01-05T16:00:00.000Z',
		37000.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		23,
		'reciumd67fb',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 5',
		'opteh974',
		'opty4o0z',
		'2023-05-23T16:00:00.000Z',
		'2023-11-23T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-23T16:00:00.000Z',
		9500.0
	);
INSERT INTO tbl4undb0lh
VALUES(
		24,
		'rect5769du8',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		'2023-05-27 18:41:20',
		'usrbuajh55q',
		NULL,
		NULL,
		'Deal Name 5',
		'opteh974',
		'opty4o0z',
		'2023-05-23T16:00:00.000Z',
		'2023-11-23T16:00:00.000Z',
		NULL,
		NULL,
		'2023-05-23T16:00:00.000Z',
		9500.0
	);
CREATE TABLE `fldtefbcm18_collaborator` (
	`user_id` varchar(255) not null,
	`record_id` varchar(255) not null,
	foreign key(`user_id`) references `undb_user`(`id`),
	foreign key(`record_id`) references `tbl4undb0lh`(`id`),
	primary key (`record_id`, `user_id`)
);
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recf03f2mz9');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recjpd9hcvj');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'rec1mp03meb');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'rec4cxfpnno');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recvr6i19an');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recbo0p7q5c');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recll6gqgft');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'rec3rjjcwnp');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'rec7c7cmxtg');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recdhn2g0rx');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'reci5wlyz4x');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'reczr96nh4u');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'rec29ubkfhs');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recotkwjqbx');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recyvrgke91');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recag7todql');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recq9k9x3sq');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recsiu01ui6');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recg8yzwyrt');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'rec7rb8xkey');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'recy7j5vxfl');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'rec2vi6q7v7');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'reciumd67fb');
INSERT INTO fldtefbcm18_collaborator
VALUES('usrbuajh55q', 'rect5769du8');
CREATE TABLE `tblramxgp7z` (
	`auto_increment` integer not null primary key autoincrement,
	`id` varchar(255) not null,
	`created_at` datetime not null default CURRENT_TIMESTAMP,
	`created_by` varchar(255) not null,
	`updated_at` datetime not null default CURRENT_TIMESTAMP,
	`updated_by` varchar(255) not null,
	`deleted_at` datetime null,
	`deleted_by` varchar(255),
	`fldel2i4v7v` varchar(255),
	`fldcamelfi7` varchar(255),
	`fldqojjbrau` varchar(255),
	`fldovc5s8pe` varchar(255),
	`fldpq4mvj6c` varchar(255),
	`fldgbowxfbc` varchar(255)
);
INSERT INTO tblramxgp7z
VALUES(
		1,
		'recqymnue1f',
		'2023-05-20 16:09:42',
		'usrzvhv8srb',
		'2023-05-20 16:27:29',
		'usrzvhv8srb',
		NULL,
		NULL,
		'Ambrose',
		'opt88amk',
		'Ambrose@email.com',
		NULL,
		'18765679998',
		''
	);
INSERT INTO tblramxgp7z
VALUES(
		2,
		'recth047g3f',
		'2023-05-20 16:09:53',
		'usrzvhv8srb',
		'2023-05-20 16:28:16',
		'usrzvhv8srb',
		NULL,
		NULL,
		'Vincent',
		'opt0ucwc',
		'Vincent@email.com',
		NULL,
		'13987467822',
		''
	);
INSERT INTO tblramxgp7z
VALUES(
		3,
		'rechywfw24h',
		'2023-05-20 16:10:05',
		'usrzvhv8srb',
		'2023-05-20 17:16:34',
		'usrzvhv8srb',
		NULL,
		NULL,
		'James',
		'optqutxq',
		'James@email.com',
		NULL,
		'17866547899',
		''
	);
INSERT INTO tblramxgp7z
VALUES(
		4,
		'recqjdtn4wj',
		'2023-05-20 16:10:31',
		'usrzvhv8srb',
		'2023-05-20 17:17:35',
		'usrzvhv8srb',
		NULL,
		NULL,
		'Bertran',
		'opt88amk',
		'Bertran@email.com',
		NULL,
		'13336457899',
		''
	);
CREATE TABLE `fld5vld4clt_tblramxgp7z_adjacency_list` (
	`to_id` varchar(255) not null,
	`from_id` varchar(255) not null,
	foreign key(`to_id`) references `tblramxgp7z`(`id`),
	foreign key(`from_id`) references `tbl4undb0lh`(`id`),
	primary key (`to_id`, `from_id`)
);
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqymnue1f', 'recf03f2mz9');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recth047g3f', 'recjpd9hcvj');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('rechywfw24h', 'rec1mp03meb');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqjdtn4wj', 'rec4cxfpnno');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recth047g3f', 'recvr6i19an');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqjdtn4wj', 'recbo0p7q5c');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('rechywfw24h', 'recll6gqgft');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqjdtn4wj', 'rec3rjjcwnp');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqjdtn4wj', 'rec7c7cmxtg');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqymnue1f', 'recdhn2g0rx');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recth047g3f', 'reci5wlyz4x');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recth047g3f', 'reczr96nh4u');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('rechywfw24h', 'rec29ubkfhs');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqjdtn4wj', 'recotkwjqbx');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqjdtn4wj', 'recyvrgke91');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqjdtn4wj', 'recag7todql');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqjdtn4wj', 'recq9k9x3sq');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqymnue1f', 'recsiu01ui6');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recqymnue1f', 'recg8yzwyrt');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recth047g3f', 'rec7rb8xkey');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recth047g3f', 'recy7j5vxfl');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('rechywfw24h', 'rec2vi6q7v7');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recth047g3f', 'reciumd67fb');
INSERT INTO fld5vld4clt_tblramxgp7z_adjacency_list
VALUES('recth047g3f', 'rect5769du8');
CREATE TABLE `tblwqjcq0x8` (
	`auto_increment` integer not null primary key autoincrement,
	`id` varchar(255) not null,
	`created_at` datetime not null default CURRENT_TIMESTAMP,
	`created_by` varchar(255) not null,
	`updated_at` datetime not null default CURRENT_TIMESTAMP,
	`updated_by` varchar(255) not null,
	`deleted_at` datetime null,
	`deleted_by` varchar(255),
	`fldo4mvc3bq` varchar(255),
	`fldrlmpebtz` varchar(255),
	`fldamnv8ghw` varchar(255)
);
INSERT INTO tblwqjcq0x8
VALUES(
		1,
		'rec16l53qwc',
		'2023-05-20 16:10:44',
		'usrzvhv8srb',
		'2023-05-20 16:25:06',
		'usrzvhv8srb',
		NULL,
		NULL,
		'Company Name 1',
		'CEO',
		'CEO'
	);
INSERT INTO tblwqjcq0x8
VALUES(
		2,
		'recwth68evr',
		'2023-05-20 16:11:03',
		'usrzvhv8srb',
		'2023-05-20 17:21:07',
		'usrzvhv8srb',
		NULL,
		NULL,
		'Company Name 2',
		'COO',
		'COO'
	);
INSERT INTO tblwqjcq0x8
VALUES(
		3,
		'rec4gj4ju56',
		'2023-05-20 16:13:45',
		'usrzvhv8srb',
		'2023-05-20 17:21:21',
		'usrzvhv8srb',
		NULL,
		NULL,
		'Company Name 3',
		'CPO',
		'CPO'
	);
INSERT INTO tblwqjcq0x8
VALUES(
		4,
		'rec4htof4vx',
		'2023-05-24 14:18:06',
		'usrbuajh55q',
		'2023-05-24 14:20:26',
		'usrbuajh55q',
		NULL,
		NULL,
		'Company Name 4',
		NULL,
		'CTO'
	);
CREATE TABLE `fldtgvzjaoj_tblwqjcq0x8_adjacency_list` (
	`to_id` varchar(255) not null,
	`from_id` varchar(255) not null,
	foreign key(`to_id`) references `tblwqjcq0x8`(`id`),
	foreign key(`from_id`) references `tblramxgp7z`(`id`),
	primary key (`to_id`, `from_id`)
);
INSERT INTO fldtgvzjaoj_tblwqjcq0x8_adjacency_list
VALUES('rec16l53qwc', 'recqymnue1f');
INSERT INTO fldtgvzjaoj_tblwqjcq0x8_adjacency_list
VALUES('recwth68evr', 'recth047g3f');
INSERT INTO fldtgvzjaoj_tblwqjcq0x8_adjacency_list
VALUES('rec4gj4ju56', 'rechywfw24h');
INSERT INTO fldtgvzjaoj_tblwqjcq0x8_adjacency_list
VALUES('rec4gj4ju56', 'recqjdtn4wj');
CREATE TABLE `fld6pd0v553_tblwqjcq0x8_closure_table` (
	`child_id` varchar(255) not null,
	`parent_id` varchar(255) not null,
	`depth` integer not null default '0',
	foreign key(`child_id`) references `tblwqjcq0x8`(`id`) on delete CASCADE,
	foreign key(`parent_id`) references `tblwqjcq0x8`(`id`) on delete CASCADE,
	primary key (`child_id`, `parent_id`)
);
INSERT INTO fld6pd0v553_tblwqjcq0x8_closure_table
VALUES('rec16l53qwc', 'rec16l53qwc', 0);
INSERT INTO fld6pd0v553_tblwqjcq0x8_closure_table
VALUES('recwth68evr', 'recwth68evr', 0);
CREATE TABLE `tbl4ezqb49a` (
	`auto_increment` integer not null primary key autoincrement,
	`id` varchar(255) not null,
	`created_at` datetime not null default CURRENT_TIMESTAMP,
	`created_by` varchar(255) not null,
	`updated_at` datetime not null default CURRENT_TIMESTAMP,
	`updated_by` varchar(255) not null,
	`deleted_at` datetime null,
	`deleted_by` varchar(255),
	`fldvpb5tbbc` varchar(255)
);
INSERT INTO tbl4ezqb49a
VALUES(
		1,
		'rec2qr07yes',
		'2023-05-20 16:14:59',
		'usrzvhv8srb',
		'2023-05-20 16:14:59',
		'usrzvhv8srb',
		NULL,
		NULL,
		'CEO'
	);
INSERT INTO tbl4ezqb49a
VALUES(
		2,
		'rec65i96nud',
		'2023-05-20 16:15:04',
		'usrzvhv8srb',
		'2023-05-20 16:15:04',
		'usrzvhv8srb',
		NULL,
		NULL,
		'COO'
	);
INSERT INTO tbl4ezqb49a
VALUES(
		3,
		'reca1g9gntv',
		'2023-05-20 16:15:12',
		'usrzvhv8srb',
		'2023-05-20 16:15:12',
		'usrzvhv8srb',
		NULL,
		NULL,
		'CFO'
	);
INSERT INTO tbl4ezqb49a
VALUES(
		4,
		'rec6vxgt0pa',
		'2023-05-20 16:15:17',
		'usrzvhv8srb',
		'2023-05-20 16:15:17',
		'usrzvhv8srb',
		NULL,
		NULL,
		'CPO'
	);
INSERT INTO tbl4ezqb49a
VALUES(
		5,
		'recrxmrgqfb',
		'2023-05-24 14:18:29',
		'usrbuajh55q',
		'2023-05-24 14:18:29',
		'usrbuajh55q',
		NULL,
		NULL,
		'CTO'
	);
INSERT INTO tbl4ezqb49a
VALUES(
		6,
		'recd9vossil',
		'2023-05-24 14:18:35',
		'usrbuajh55q',
		'2023-05-24 14:18:35',
		'usrbuajh55q',
		NULL,
		NULL,
		'IT'
	);
INSERT INTO tbl4ezqb49a
VALUES(
		7,
		'rec1o3gs5gh',
		'2023-05-24 14:18:45',
		'usrbuajh55q',
		'2023-05-24 14:18:45',
		'usrbuajh55q',
		NULL,
		NULL,
		'Sales'
	);
INSERT INTO tbl4ezqb49a
VALUES(
		8,
		'recscwm83hu',
		'2023-05-24 14:18:56',
		'usrbuajh55q',
		'2023-05-24 14:18:56',
		'usrbuajh55q',
		NULL,
		NULL,
		'Marketing'
	);
INSERT INTO tbl4ezqb49a
VALUES(
		9,
		'rec6h8wqgsm',
		'2023-05-24 14:19:38',
		'usrbuajh55q',
		'2023-05-24 14:19:38',
		'usrbuajh55q',
		NULL,
		NULL,
		'Customer support'
	);
CREATE TABLE `fldlosp8skm_tbl4ezqb49a_adjacency_list` (
	`to_id` varchar(255) not null,
	`from_id` varchar(255) not null,
	foreign key(`to_id`) references `tbl4ezqb49a`(`id`),
	foreign key(`from_id`) references `tblwqjcq0x8`(`id`),
	primary key (`to_id`, `from_id`)
);
INSERT INTO fldlosp8skm_tbl4ezqb49a_adjacency_list
VALUES('rec2qr07yes', 'rec16l53qwc');
INSERT INTO fldlosp8skm_tbl4ezqb49a_adjacency_list
VALUES('rec65i96nud', 'recwth68evr');
INSERT INTO fldlosp8skm_tbl4ezqb49a_adjacency_list
VALUES('rec6vxgt0pa', 'rec4gj4ju56');
INSERT INTO fldlosp8skm_tbl4ezqb49a_adjacency_list
VALUES('recrxmrgqfb', 'rec4htof4vx');
CREATE TABLE `tbl2za35hbg` (
	`auto_increment` integer not null primary key autoincrement,
	`id` varchar(255) not null,
	`created_at` datetime not null default CURRENT_TIMESTAMP,
	`created_by` varchar(255) not null,
	`updated_at` datetime not null default CURRENT_TIMESTAMP,
	`updated_by` varchar(255) not null,
	`deleted_at` datetime null,
	`deleted_by` varchar(255),
	`fldskwotpjg` varchar(255),
	`fldr3t33atc` varchar(255),
	`fldxx0cyu8w` varchar(255),
	`fldqjxpupfu` varchar(255),
	`fld19njyj50` varchar(255),
	`fld67w65koz` varchar(255),
	`fldui7hrx2t` datetime,
	`fld38j2aoqw` varchar(255),
	`fldmjxybwnt` varchar(255),
	`fldntjvterl` varchar(255),
	`fldu3ll00ho` varchar(255),
	`fldy60tdkfr` varchar(255),
	`fld4a04leij` varchar(255),
	`fldkd8gvemb` float,
	`fld5pgga2xx` float
);
INSERT INTO tbl2za35hbg
VALUES(
		1,
		'rec6tm3pudz',
		'2023-05-21 08:57:05',
		'usrzvhv8srb',
		'2023-05-24 14:23:55',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 1',
		'optsgc8w',
		'Employee1@email.com',
		'18976548765',
		'Product marketing',
		'opt8h6fl',
		'2023-06-30T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt27124',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		2,
		'rec4totdobf',
		'2023-05-21 08:58:39',
		'usrzvhv8srb',
		'2023-05-24 14:24:01',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 2',
		'optsgc8w',
		'Employee2@email.com',
		'17887655643',
		'Accountant',
		'opt44dfp',
		'2023-08-03T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt27124',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		3,
		'reclt43wagf',
		'2023-05-21 08:58:57',
		'usrzvhv8srb',
		'2023-05-24 14:24:11',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 3',
		'opt8ef1v',
		'Employee3@email.com',
		'18765983622',
		'Customer support',
		'opts4ao9',
		'2023-04-11T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		4,
		'recbgbz1xcz',
		'2023-05-21 08:59:02',
		'usrzvhv8srb',
		'2023-05-24 14:24:21',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 4',
		'optgin1z',
		'Employee4@email.com',
		'19090909876',
		'Accountant',
		'opt44dfp',
		'2023-03-31T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optybpi2',
		'optsij84',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		5,
		'rec6zbygjkn',
		'2023-05-21 08:59:07',
		'usrzvhv8srb',
		'2023-05-24 14:36:00',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 5',
		'opt8ef1v',
		'Employee5@email.com',
		'18790654342',
		'Product marketing',
		'opt8h6fl',
		'2023-05-21T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt27124',
		'',
		'optap9r0',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		6,
		'rec7qr912bx',
		'2023-05-21 08:59:12',
		'usrzvhv8srb',
		'2023-05-24 14:24:41',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 6',
		'optjsdp6',
		'employee6@email.com',
		'15647872653',
		'Product marketing',
		'opt8h6fl',
		'2023-05-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		0.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		7,
		'recv2huajbe',
		'2023-05-21 08:59:17',
		'usrzvhv8srb',
		'2023-05-24 14:36:16',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 7',
		'optsgc8w',
		'employee7@email.com',
		'',
		'Software developer',
		'optjehd9',
		'2023-05-30T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt6moby',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		8,
		'recus5nov9q',
		'2023-05-21 08:59:22',
		'usrzvhv8srb',
		'2023-05-24 14:36:24',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 8',
		'optgin1z',
		'employee8@email.com',
		'19823456786',
		'UI ',
		'optpg4ya',
		'2023-04-09T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optzq9lr',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		9,
		'rechqk7yzm5',
		'2023-05-21 08:59:28',
		'usrzvhv8srb',
		'2023-05-24 14:36:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 9',
		'optlottl',
		'employee9@email.com',
		'12345436765',
		'CTO',
		'opt0g9hh',
		'2023-03-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		5.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		10,
		'rec794hljl2',
		'2023-05-21 08:59:40',
		'usrzvhv8srb',
		'2023-05-24 14:36:45',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 10',
		'optlottl',
		'employee9@email.com',
		'19654372655',
		'CPO',
		'opt0g9hh',
		'2023-02-21T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		2.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		11,
		'rec8rft252j',
		'2023-05-21 08:59:45',
		'usrzvhv8srb',
		'2023-05-24 14:36:54',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 11',
		'optlottl',
		'employee11@email.com',
		'15467678989',
		'frontend developer',
		'optjehd9',
		'2022-12-07T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		4.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		12,
		'rec6fc5uqah',
		'2023-05-21 08:59:52',
		'usrzvhv8srb',
		'2023-05-24 14:37:06',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 12',
		'optsgc8w',
		'employee12@email.com',
		'12345678976',
		'UX',
		'optpg4ya',
		'2023-05-22T16:00:00.000Z',
		'optks9w7',
		'opt4ra5l',
		'opt6moby',
		'',
		'optybpi2',
		'optsij84',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		13,
		'rech888ljz8',
		'2023-05-21 08:59:57',
		'usrzvhv8srb',
		'2023-05-24 14:37:15',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 13',
		'optlottl',
		'Employee13@email.com',
		'16666666666',
		'Security',
		'optk8vx1',
		'2021-06-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		3.0,
		1.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		14,
		'rec7hkzhrq6',
		'2023-05-21 09:00:03',
		'usrzvhv8srb',
		'2023-05-24 14:40:00',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 14',
		'optjsdp6',
		'Employee14@email.com',
		'15555555555',
		'Backend developer',
		'optjehd9',
		'2023-05-18T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		5.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		15,
		'rec5w6qead5',
		'2023-05-21 09:00:07',
		'usrzvhv8srb',
		'2023-05-24 14:37:33',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 15',
		'opt8ef1v',
		'Employee15@email.com',
		'17777777777',
		'Sales',
		'optrhqo9',
		'2023-05-11T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		16,
		'rechsnajzjc',
		'2023-05-21 09:00:17',
		'usrzvhv8srb',
		'2023-05-24 14:37:42',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 16',
		'optgin1z',
		'Employee16@email.com',
		'16677778888',
		'IOS',
		'optuieaz',
		'2023-04-05T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		17,
		'recy6sdnb04',
		'2023-05-21 09:00:23',
		'usrzvhv8srb',
		'2023-05-24 14:37:49',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 17',
		'optlottl',
		'Employee17@email.com',
		'15454546767',
		'Sales',
		'optrhqo9',
		'2023-03-08T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		5.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		18,
		'recodej41pa',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 2',
		'optsgc8w',
		'Employee2@email.com',
		'17887655643',
		'Accountant',
		'opt44dfp',
		'2023-08-03T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt27124',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		19,
		'recpnpdryn1',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 15',
		'opt8ef1v',
		'Employee15@email.com',
		'17777777777',
		'Sales',
		'optrhqo9',
		'2023-05-11T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		20,
		'recqpm1tjzo',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 12',
		'optsgc8w',
		'employee12@email.com',
		'12345678976',
		'UX',
		'optpg4ya',
		'2023-05-22T16:00:00.000Z',
		'optks9w7',
		'opt4ra5l',
		'opt6moby',
		'',
		'optybpi2',
		'optsij84',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		21,
		'rec37q783fi',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 1',
		'optsgc8w',
		'Employee1@email.com',
		'18976548765',
		'Product marketing',
		'opt8h6fl',
		'2023-06-30T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt27124',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		22,
		'rec2j0qzu4n',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 5',
		'opt8ef1v',
		'Employee5@email.com',
		'18790654342',
		'Product marketing',
		'opt8h6fl',
		'2023-05-21T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt27124',
		'',
		'optap9r0',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		23,
		'recfuy5ugaj',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 10',
		'optlottl',
		'employee9@email.com',
		'19654372655',
		'CPO',
		'opt0g9hh',
		'2023-02-21T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		2.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		24,
		'rec64xl27aw',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 14',
		'optjsdp6',
		'Employee14@email.com',
		'15555555555',
		'Backend developer',
		'optjehd9',
		'2023-05-18T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		5.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		25,
		'rec1rh97pw6',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 6',
		'optjsdp6',
		'employee6@email.com',
		'15647872653',
		'Product marketing',
		'opt8h6fl',
		'2023-05-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		0.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		26,
		'rec0eu6u7ix',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 11',
		'optlottl',
		'employee11@email.com',
		'15467678989',
		'frontend developer',
		'optjehd9',
		'2022-12-07T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		4.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		27,
		'rec1mnudfzh',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 4',
		'optgin1z',
		'Employee4@email.com',
		'19090909876',
		'Accountant',
		'opt44dfp',
		'2023-03-31T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optybpi2',
		'optsij84',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		28,
		'recu0a6zmav',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 13',
		'optlottl',
		'Employee13@email.com',
		'16666666666',
		'Security',
		'optk8vx1',
		'2021-06-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		3.0,
		1.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		29,
		'rec8gbl15g7',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 9',
		'optlottl',
		'employee9@email.com',
		'12345436765',
		'CTO',
		'opt0g9hh',
		'2023-03-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		5.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		30,
		'rec13tydflw',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 16',
		'optgin1z',
		'Employee16@email.com',
		'16677778888',
		'IOS',
		'optuieaz',
		'2023-04-05T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		31,
		'rec0deekh0v',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 3',
		'opt8ef1v',
		'Employee3@email.com',
		'18765983622',
		'Customer support',
		'opts4ao9',
		'2023-04-11T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		32,
		'recaav8fprj',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 8',
		'optgin1z',
		'employee8@email.com',
		'19823456786',
		'UI ',
		'optpg4ya',
		'2023-04-09T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optzq9lr',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		33,
		'rec2cdpncrh',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 7',
		'optsgc8w',
		'employee7@email.com',
		'',
		'Software developer',
		'optjehd9',
		'2023-05-30T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt6moby',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		34,
		'reck5nnkzdj',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		'2023-05-27 18:43:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 17',
		'optlottl',
		'Employee17@email.com',
		'15454546767',
		'Sales',
		'optrhqo9',
		'2023-03-08T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		5.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		35,
		'recqdx0thp6',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 3',
		'opt8ef1v',
		'Employee3@email.com',
		'18765983622',
		'Customer support',
		'opts4ao9',
		'2023-04-11T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		36,
		'receb3ghosa',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 11',
		'optlottl',
		'employee11@email.com',
		'15467678989',
		'frontend developer',
		'optjehd9',
		'2022-12-07T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		4.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		37,
		'recx1y3loqg',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 16',
		'optgin1z',
		'Employee16@email.com',
		'16677778888',
		'IOS',
		'optuieaz',
		'2023-04-05T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		38,
		'recn37pxylw',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 4',
		'optgin1z',
		'Employee4@email.com',
		'19090909876',
		'Accountant',
		'opt44dfp',
		'2023-03-31T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optybpi2',
		'optsij84',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		39,
		'recxr77cw6k',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 6',
		'optjsdp6',
		'employee6@email.com',
		'15647872653',
		'Product marketing',
		'opt8h6fl',
		'2023-05-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		0.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		40,
		'rec5wem3q07',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 7',
		'optsgc8w',
		'employee7@email.com',
		'',
		'Software developer',
		'optjehd9',
		'2023-05-30T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt6moby',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		41,
		'recw9llfmr8',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 5',
		'opt8ef1v',
		'Employee5@email.com',
		'18790654342',
		'Product marketing',
		'opt8h6fl',
		'2023-05-21T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt27124',
		'',
		'optap9r0',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		42,
		'rec9kbw4nq1',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 1',
		'optsgc8w',
		'Employee1@email.com',
		'18976548765',
		'Product marketing',
		'opt8h6fl',
		'2023-06-30T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt27124',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		43,
		'recevvam18x',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 2',
		'optsgc8w',
		'Employee2@email.com',
		'17887655643',
		'Accountant',
		'opt44dfp',
		'2023-08-03T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt27124',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		44,
		'recvqy14wcq',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 15',
		'opt8ef1v',
		'Employee15@email.com',
		'17777777777',
		'Sales',
		'optrhqo9',
		'2023-05-11T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		45,
		'recjv9z2yuk',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 14',
		'optjsdp6',
		'Employee14@email.com',
		'15555555555',
		'Backend developer',
		'optjehd9',
		'2023-05-18T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		5.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		46,
		'recyvxzgb46',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 12',
		'optsgc8w',
		'employee12@email.com',
		'12345678976',
		'UX',
		'optpg4ya',
		'2023-05-22T16:00:00.000Z',
		'optks9w7',
		'opt4ra5l',
		'opt6moby',
		'',
		'optybpi2',
		'optsij84',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		47,
		'reced6iv1gf',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 1',
		'optsgc8w',
		'Employee1@email.com',
		'18976548765',
		'Product marketing',
		'opt8h6fl',
		'2023-06-30T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt27124',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		48,
		'rec69fxv4wl',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 5',
		'opt8ef1v',
		'Employee5@email.com',
		'18790654342',
		'Product marketing',
		'opt8h6fl',
		'2023-05-21T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt27124',
		'',
		'optap9r0',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		49,
		'rec1xsgt0ob',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 10',
		'optlottl',
		'employee9@email.com',
		'19654372655',
		'CPO',
		'opt0g9hh',
		'2023-02-21T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		2.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		50,
		'recx971jq3x',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 14',
		'optjsdp6',
		'Employee14@email.com',
		'15555555555',
		'Backend developer',
		'optjehd9',
		'2023-05-18T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		5.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		51,
		'recvb51y5az',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 6',
		'optjsdp6',
		'employee6@email.com',
		'15647872653',
		'Product marketing',
		'opt8h6fl',
		'2023-05-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		0.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		52,
		'reclmgdifan',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 9',
		'optlottl',
		'employee9@email.com',
		'12345436765',
		'CTO',
		'opt0g9hh',
		'2023-03-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		5.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		53,
		'receevmyz9q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 11',
		'optlottl',
		'employee11@email.com',
		'15467678989',
		'frontend developer',
		'optjehd9',
		'2022-12-07T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		4.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		54,
		'recxh3urir7',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 8',
		'optgin1z',
		'employee8@email.com',
		'19823456786',
		'UI ',
		'optpg4ya',
		'2023-04-09T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optzq9lr',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		55,
		'recg1wd95od',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 4',
		'optgin1z',
		'Employee4@email.com',
		'19090909876',
		'Accountant',
		'opt44dfp',
		'2023-03-31T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optybpi2',
		'optsij84',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		56,
		'recmgwh9smy',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 10',
		'optlottl',
		'employee9@email.com',
		'19654372655',
		'CPO',
		'opt0g9hh',
		'2023-02-21T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		2.0,
		2.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		57,
		'rec6mh7ap8l',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 13',
		'optlottl',
		'Employee13@email.com',
		'16666666666',
		'Security',
		'optk8vx1',
		'2021-06-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		3.0,
		1.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		58,
		'rec695fqs0e',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 9',
		'optlottl',
		'employee9@email.com',
		'12345436765',
		'CTO',
		'opt0g9hh',
		'2023-03-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		5.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		59,
		'recjoxp05s0',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 16',
		'optgin1z',
		'Employee16@email.com',
		'16677778888',
		'IOS',
		'optuieaz',
		'2023-04-05T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		60,
		'rec212oxbqb',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 17',
		'optlottl',
		'Employee17@email.com',
		'15454546767',
		'Sales',
		'optrhqo9',
		'2023-03-08T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		5.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		61,
		'recnjamqux6',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 3',
		'opt8ef1v',
		'Employee3@email.com',
		'18765983622',
		'Customer support',
		'opts4ao9',
		'2023-04-11T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		62,
		'reco7t6ruyd',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 2',
		'optsgc8w',
		'Employee2@email.com',
		'17887655643',
		'Accountant',
		'opt44dfp',
		'2023-08-03T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt27124',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		63,
		'recjj3e5h2s',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 15',
		'opt8ef1v',
		'Employee15@email.com',
		'17777777777',
		'Sales',
		'optrhqo9',
		'2023-05-11T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optz8twl',
		'optukskn',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		64,
		'recfe75a6lj',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 12',
		'optsgc8w',
		'employee12@email.com',
		'12345678976',
		'UX',
		'optpg4ya',
		'2023-05-22T16:00:00.000Z',
		'optks9w7',
		'opt4ra5l',
		'opt6moby',
		'',
		'optybpi2',
		'optsij84',
		3.0,
		5.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		65,
		'recgqp9cj6y',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 13',
		'optlottl',
		'Employee13@email.com',
		'16666666666',
		'Security',
		'optk8vx1',
		'2021-06-14T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		3.0,
		1.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		66,
		'recqfvqef5q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 8',
		'optgin1z',
		'employee8@email.com',
		'19823456786',
		'UI ',
		'optpg4ya',
		'2023-04-09T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optzq9lr',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		67,
		'recdwb7no4g',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 7',
		'optsgc8w',
		'employee7@email.com',
		'',
		'Software developer',
		'optjehd9',
		'2023-05-30T16:00:00.000Z',
		'opttmurc',
		'optqqamc',
		'opt6moby',
		'',
		'optybpi2',
		'optsij84',
		0.0,
		0.0
	);
INSERT INTO tbl2za35hbg
VALUES(
		68,
		'rec2sqa3v4a',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		'2023-05-27 18:43:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Employee 17',
		'optlottl',
		'Employee17@email.com',
		'15454546767',
		'Sales',
		'optrhqo9',
		'2023-03-08T16:00:00.000Z',
		'opt4lu2m',
		'optlhx0u',
		'opt0cxih',
		'',
		'optap9r0',
		'optuqbtr',
		5.0,
		5.0
	);
CREATE TABLE `fldd55dsm2m_collaborator` (
	`user_id` varchar(255) not null,
	`record_id` varchar(255) not null,
	foreign key(`user_id`) references `undb_user`(`id`),
	foreign key(`record_id`) references `tbl2za35hbg`(`id`),
	primary key (`record_id`, `user_id`)
);
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec6tm3pudz');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec4totdobf');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'reclt43wagf');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recbgbz1xcz');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec6zbygjkn');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec7qr912bx');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recv2huajbe');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recus5nov9q');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rechqk7yzm5');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec794hljl2');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec8rft252j');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec6fc5uqah');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rech888ljz8');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec7hkzhrq6');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec5w6qead5');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rechsnajzjc');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recy6sdnb04');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recodej41pa');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recpnpdryn1');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recqpm1tjzo');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec37q783fi');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec2j0qzu4n');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recfuy5ugaj');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec64xl27aw');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec1rh97pw6');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec0eu6u7ix');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec1mnudfzh');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recu0a6zmav');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec8gbl15g7');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec13tydflw');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec0deekh0v');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recaav8fprj');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec2cdpncrh');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'reck5nnkzdj');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recqdx0thp6');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'receb3ghosa');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recx1y3loqg');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recn37pxylw');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recxr77cw6k');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec5wem3q07');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recw9llfmr8');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec9kbw4nq1');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recevvam18x');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recvqy14wcq');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recjv9z2yuk');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recyvxzgb46');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'reced6iv1gf');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec69fxv4wl');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec1xsgt0ob');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recx971jq3x');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recvb51y5az');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'reclmgdifan');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'receevmyz9q');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recxh3urir7');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recg1wd95od');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recmgwh9smy');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec6mh7ap8l');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec695fqs0e');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recjoxp05s0');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec212oxbqb');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recnjamqux6');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'reco7t6ruyd');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recjj3e5h2s');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recfe75a6lj');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recgqp9cj6y');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recqfvqef5q');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'recdwb7no4g');
INSERT INTO fldd55dsm2m_collaborator
VALUES('usrbuajh55q', 'rec2sqa3v4a');
CREATE TABLE `tblruubokdc` (
	`auto_increment` integer not null primary key autoincrement,
	`id` varchar(255) not null,
	`created_at` datetime not null default CURRENT_TIMESTAMP,
	`created_by` varchar(255) not null,
	`updated_at` datetime not null default CURRENT_TIMESTAMP,
	`updated_by` varchar(255) not null,
	`deleted_at` datetime null,
	`deleted_by` varchar(255),
	`fldhrrqqlqh` varchar(255),
	`fld0gmmj29q` varchar(255),
	`fld3814mrgg` float
);
INSERT INTO tblruubokdc
VALUES(
		1,
		'recm1kabi9l',
		'2023-05-21 08:54:22',
		'usrzvhv8srb',
		'2023-05-27 18:56:08',
		'usrbuajh55q',
		NULL,
		NULL,
		'Vincent',
		'manager 1',
		3.0
	);
INSERT INTO tblruubokdc
VALUES(
		2,
		'recjh3moqxr',
		'2023-05-21 08:54:46',
		'usrzvhv8srb',
		'2023-05-27 18:56:13',
		'usrbuajh55q',
		NULL,
		NULL,
		'Jason',
		'manager 2',
		3.0
	);
INSERT INTO tblruubokdc
VALUES(
		3,
		'recsuqouv2q',
		'2023-05-27 18:53:28',
		'usrbuajh55q',
		'2023-05-27 18:53:28',
		'usrbuajh55q',
		NULL,
		NULL,
		'King',
		'CEO',
		1.0
	);
INSERT INTO tblruubokdc
VALUES(
		4,
		'recngzo73ge',
		'2023-05-27 18:54:10',
		'usrbuajh55q',
		'2023-05-27 18:55:18',
		'usrbuajh55q',
		NULL,
		NULL,
		'Scott',
		'CPO',
		2.0
	);
INSERT INTO tblruubokdc
VALUES(
		5,
		'recvpmpb1bv',
		'2023-05-27 18:54:54',
		'usrbuajh55q',
		'2023-05-27 18:56:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Ford',
		'Sales',
		4.0
	);
CREATE TABLE `fldfpeufgq3_tblruubokdc_adjacency_list` (
	`to_id` varchar(255) not null,
	`from_id` varchar(255) not null,
	foreign key(`to_id`) references `tblruubokdc`(`id`),
	foreign key(`from_id`) references `tbl2za35hbg`(`id`),
	primary key (`to_id`, `from_id`)
);
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec6tm3pudz');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'rec4totdobf');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'recbgbz1xcz');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec6zbygjkn');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec7qr912bx');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recv2huajbe');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recus5nov9q');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'rechqk7yzm5');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec8rft252j');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'rec6fc5uqah');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'rech888ljz8');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec7hkzhrq6');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec5w6qead5');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rechsnajzjc');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recy6sdnb04');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'recodej41pa');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recpnpdryn1');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'recqpm1tjzo');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec37q783fi');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec2j0qzu4n');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec64xl27aw');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec1rh97pw6');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec0eu6u7ix');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'rec1mnudfzh');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'recu0a6zmav');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'rec8gbl15g7');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec13tydflw');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recaav8fprj');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec2cdpncrh');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'reck5nnkzdj');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'receb3ghosa');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recx1y3loqg');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'recn37pxylw');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recxr77cw6k');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec5wem3q07');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recw9llfmr8');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec9kbw4nq1');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'recevvam18x');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recvqy14wcq');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recjv9z2yuk');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'recyvxzgb46');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'reced6iv1gf');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec69fxv4wl');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recx971jq3x');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recvb51y5az');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'reclmgdifan');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'receevmyz9q');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recxh3urir7');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'recg1wd95od');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'rec6mh7ap8l');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'rec695fqs0e');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recjoxp05s0');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec212oxbqb');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'reco7t6ruyd');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recjj3e5h2s');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'recfe75a6lj');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recjh3moqxr', 'recgqp9cj6y');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recqfvqef5q');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'recdwb7no4g');
INSERT INTO fldfpeufgq3_tblruubokdc_adjacency_list
VALUES('recm1kabi9l', 'rec2sqa3v4a');
CREATE TABLE `fldng2e0uhl_collaborator` (
	`user_id` varchar(255) not null,
	`record_id` varchar(255) not null,
	foreign key(`user_id`) references `undb_user`(`id`),
	foreign key(`record_id`) references `tbl2za35hbg`(`id`),
	primary key (`record_id`, `user_id`)
);
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec6tm3pudz');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'reclt43wagf');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recbgbz1xcz');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec6zbygjkn');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec7qr912bx');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recv2huajbe');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recus5nov9q');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rechqk7yzm5');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec794hljl2');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec8rft252j');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec6fc5uqah');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rech888ljz8');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec7hkzhrq6');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec5w6qead5');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rechsnajzjc');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recy6sdnb04');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recfuy5ugaj');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec0deekh0v');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recpnpdryn1');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recqpm1tjzo');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec37q783fi');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec2j0qzu4n');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec64xl27aw');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec1rh97pw6');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec0eu6u7ix');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec1mnudfzh');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recu0a6zmav');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec8gbl15g7');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec13tydflw');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recaav8fprj');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec2cdpncrh');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'reck5nnkzdj');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recqdx0thp6');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec1xsgt0ob');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recmgwh9smy');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recnjamqux6');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'receb3ghosa');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recx1y3loqg');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recn37pxylw');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recxr77cw6k');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec5wem3q07');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recw9llfmr8');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec9kbw4nq1');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recvqy14wcq');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recjv9z2yuk');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recyvxzgb46');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'reced6iv1gf');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec69fxv4wl');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recx971jq3x');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recvb51y5az');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'reclmgdifan');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'receevmyz9q');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recxh3urir7');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recg1wd95od');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec6mh7ap8l');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec695fqs0e');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recjoxp05s0');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec212oxbqb');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recjj3e5h2s');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recfe75a6lj');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recgqp9cj6y');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recqfvqef5q');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'recdwb7no4g');
INSERT INTO fldng2e0uhl_collaborator
VALUES('usrbuajh55q', 'rec2sqa3v4a');
CREATE TABLE `fld56n18njt_tblwqjcq0x8_closure_table` (
	`child_id` varchar(255) not null,
	`parent_id` varchar(255) not null,
	`depth` integer not null default '0',
	foreign key(`child_id`) references `tblwqjcq0x8`(`id`) on delete CASCADE,
	foreign key(`parent_id`) references `tblwqjcq0x8`(`id`) on delete CASCADE,
	primary key (`child_id`, `parent_id`)
);
INSERT INTO fld56n18njt_tblwqjcq0x8_closure_table
VALUES('rec16l53qwc', 'rec16l53qwc', 0);
INSERT INTO fld56n18njt_tblwqjcq0x8_closure_table
VALUES('rec4gj4ju56', 'rec4gj4ju56', 0);
INSERT INTO fld56n18njt_tblwqjcq0x8_closure_table
VALUES('recwth68evr', 'recwth68evr', 0);
INSERT INTO fld56n18njt_tblwqjcq0x8_closure_table
VALUES('rec4htof4vx', 'rec4htof4vx', 0);
INSERT INTO fld56n18njt_tblwqjcq0x8_closure_table
VALUES('rec16l53qwc', 'rec4htof4vx', 1);
CREATE TABLE `tblk4h9pgm7` (
	`auto_increment` integer not null primary key autoincrement,
	`id` varchar(255) not null,
	`created_at` datetime not null default CURRENT_TIMESTAMP,
	`created_by` varchar(255) not null,
	`updated_at` datetime not null default CURRENT_TIMESTAMP,
	`updated_by` varchar(255) not null,
	`deleted_at` datetime null,
	`deleted_by` varchar(255),
	`fldf5jx5k3p` varchar(255),
	`flds9gyvh1y` varchar(255),
	`fld1zc9irou` varchar(255),
	`fldnktdp6ej` varchar(255),
	`fldvvjbi1nv` varchar(255),
	`fld7m1scjcc` datetime,
	`fldzpcp0ouz` varchar(255),
	`fld7iz2x2bs` datetime,
	`fld749c7m6l` varchar(255),
	`fld22ldcbag` datetime,
	`fld8uonlrvg` varchar(255),
	`fld6xpgey7o` datetime,
	`fld6r6a1hc9` varchar(255),
	`fld19p1ahm5` varchar(255),
	`fldtdqxqkhr` varchar(255),
	`flde0medsct_from` datetime,
	`flde0medsct_to` datetime,
	`fldn3txeox5` varchar(255),
	`fldw0xhn5du` varchar(255)
);
INSERT INTO tblk4h9pgm7
VALUES(
		1,
		'rec3k4cw1m8',
		'2023-05-27 07:54:24',
		'usrbuajh55q',
		'2023-05-27 17:06:42',
		'usrbuajh55q',
		NULL,
		NULL,
		'In construction',
		'Address / Unit 3',
		'124 Glenridge Drive Spring Valley, CA 91977',
		'opt4kb70',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'opt2gr6e',
		'optbs3h7',
		'opttf21e',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optbywmt'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		2,
		'rec1sc83549',
		'2023-05-27 16:48:21',
		'usrbuajh55q',
		'2023-05-27 18:32:10',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 1',
		'9569 Theatre St. Oceanside, CA 92056',
		'optdbss5',
		'optuay9y',
		'2023-05-08T16:00:00.000Z',
		'opts4596',
		'2023-05-09T16:00:00.000Z',
		'optu5jkw',
		'2023-04-19T16:00:00.000Z',
		'opta8zon',
		'2023-04-12T16:00:00.000Z',
		'opt4h4tt',
		'opt7i90b',
		'opt530jq',
		'2023-03-15T16:00:00.000Z',
		'2023-08-29T16:00:00.000Z',
		'optkcpbu',
		'optbywmt'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		3,
		'rec36zg4g7u',
		'2023-05-27 17:06:11',
		'usrbuajh55q',
		'2023-05-27 18:32:17',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 2',
		'177 Griffin St. Los Angeles, CA 90001',
		'opt4kb70',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'opt20hse',
		'optbs3h7',
		'opttf21e',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optegnto'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		4,
		'recj2ca89m4',
		'2023-05-27 17:10:51',
		'usrbuajh55q',
		'2023-05-27 18:32:25',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 4',
		'9569 Theatre St. Oceanside, CA 92056',
		'opt4zoqs',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optbywmt'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		5,
		'recwczl6uep',
		'2023-05-27 17:15:38',
		'usrbuajh55q',
		'2023-05-27 18:32:34',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 5',
		'45 Young Street San Jose, CA 95127',
		'opt4zoqs',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optegnto'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		6,
		'rec07dly8bc',
		'2023-05-27 17:16:58',
		'usrbuajh55q',
		'2023-05-27 18:34:21',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 7',
		'WFG National Title Company, Northeast 8th Street',
		'optbtkxe',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optxuzzu'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		7,
		'recutqc1wlt',
		'2023-05-27 17:20:41',
		'usrbuajh55q',
		'2023-05-27 18:34:30',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 6',
		'9876 Fulton Lane San Jose, CA 95116',
		'optbtkxe',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optt4gtr'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		8,
		'recmghvocq5',
		'2023-05-27 17:45:53',
		'usrbuajh55q',
		'2023-05-27 18:35:19',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 12',
		'WFG National Title Company, Northeast 8th Street',
		'optbtkxe',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optxuzzu'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		9,
		'reccyhbbf5q',
		'2023-05-27 17:45:53',
		'usrbuajh55q',
		'2023-05-27 18:34:48',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 9',
		'9569 Theatre St. Oceanside, CA 92056',
		'optdbss5',
		'optuay9y',
		'2023-05-08T16:00:00.000Z',
		'opts4596',
		'2023-05-09T16:00:00.000Z',
		'optu5jkw',
		'2023-04-19T16:00:00.000Z',
		'opta8zon',
		'2023-04-12T16:00:00.000Z',
		'opt4h4tt',
		'opt7i90b',
		'opt530jq',
		'2023-03-15T16:00:00.000Z',
		'2023-08-29T16:00:00.000Z',
		'optkcpbu',
		'optbywmt'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		10,
		'recvyuc044p',
		'2023-05-27 17:45:53',
		'usrbuajh55q',
		'2023-05-27 18:36:11',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 14',
		'177 Griffin St. Los Angeles, CA 90001',
		'opt4kb70',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'opt20hse',
		'optbs3h7',
		'opttf21e',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optegnto'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		11,
		'recj2h464yu',
		'2023-05-27 17:45:53',
		'usrbuajh55q',
		'2023-05-27 18:34:59',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 10',
		'124 Glenridge Drive Spring Valley, CA 91977',
		'opt4kb70',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'opt2gr6e',
		'optbs3h7',
		'opttf21e',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optbywmt'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		12,
		'rec11ofngc2',
		'2023-05-27 17:45:53',
		'usrbuajh55q',
		'2023-05-27 18:34:40',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 8',
		'9569 Theatre St. Oceanside, CA 92056',
		'opt4zoqs',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optbywmt'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		13,
		'recmcfa13pa',
		'2023-05-27 17:45:53',
		'usrbuajh55q',
		'2023-05-27 18:35:09',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 11',
		'9876 Fulton Lane San Jose, CA 95116',
		'optbtkxe',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optt4gtr'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		14,
		'recqoc8f07w',
		'2023-05-27 17:45:53',
		'usrbuajh55q',
		'2023-05-27 18:35:28',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 13',
		'45 Young Street San Jose, CA 95127',
		'opt4zoqs',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optegnto'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		15,
		'recy0gptap1',
		'2023-05-27 17:47:12',
		'usrbuajh55q',
		'2023-05-27 18:37:05',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 21',
		'9569 Theatre St. Oceanside, CA 92056',
		'opt4zoqs',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optbywmt'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		16,
		'recw2phx7cz',
		'2023-05-27 17:47:12',
		'usrbuajh55q',
		'2023-05-27 18:36:56',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 20',
		'9569 Theatre St. Oceanside, CA 92056',
		'optdbss5',
		'optuay9y',
		'2023-05-08T16:00:00.000Z',
		'opts4596',
		'2023-05-09T16:00:00.000Z',
		'optu5jkw',
		'2023-04-19T16:00:00.000Z',
		'opta8zon',
		'2023-04-12T16:00:00.000Z',
		'opt4h4tt',
		'opt7i90b',
		'opt530jq',
		'2023-03-15T16:00:00.000Z',
		'2023-08-29T16:00:00.000Z',
		'optkcpbu',
		'optbywmt'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		17,
		'rect5xwmeqn',
		'2023-05-27 17:47:12',
		'usrbuajh55q',
		'2023-05-27 18:36:48',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 19',
		'124 Glenridge Drive Spring Valley, CA 91977',
		'opt4kb70',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'opt2gr6e',
		'optbs3h7',
		'opttf21e',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optbywmt'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		18,
		'recbcwnjg5s',
		'2023-05-27 17:47:12',
		'usrbuajh55q',
		'2023-05-27 18:36:24',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 16',
		'9876 Fulton Lane San Jose, CA 95116',
		'optbtkxe',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optt4gtr'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		19,
		'rec78ri5r2y',
		'2023-05-27 17:47:12',
		'usrbuajh55q',
		'2023-05-27 18:36:17',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 15',
		'WFG National Title Company, Northeast 8th Street',
		'optbtkxe',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optxuzzu'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		20,
		'reci2l4mi3d',
		'2023-05-27 17:47:12',
		'usrbuajh55q',
		'2023-05-27 18:36:38',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 18',
		'45 Young Street San Jose, CA 95127',
		'opt4zoqs',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'optkns23',
		'opt7i90b',
		'optk9tdr',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optegnto'
	);
INSERT INTO tblk4h9pgm7
VALUES(
		21,
		'rece4yfbg4j',
		'2023-05-27 17:47:12',
		'usrbuajh55q',
		'2023-05-27 18:36:30',
		'usrbuajh55q',
		NULL,
		NULL,
		NULL,
		'Address / Unit 17',
		'177 Griffin St. Los Angeles, CA 90001',
		'opt4kb70',
		'optuay9y',
		'2023-04-23T16:00:00.000Z',
		'opts4596',
		'2023-05-11T16:00:00.000Z',
		'optu5jkw',
		'2023-05-11T16:00:00.000Z',
		'optqfwlt',
		'2023-05-29T16:00:00.000Z',
		'opt20hse',
		'optbs3h7',
		'opttf21e',
		'2023-02-26T16:00:00.000Z',
		'2023-07-30T16:00:00.000Z',
		'opt8g1l1',
		'optegnto'
	);
CREATE TABLE `fld7u72oymt_tblk4h9pgm7_closure_table` (
	`child_id` varchar(255) not null,
	`parent_id` varchar(255) not null,
	`depth` integer not null default '0',
	foreign key(`child_id`) references `tblk4h9pgm7`(`id`) on delete CASCADE,
	foreign key(`parent_id`) references `tblk4h9pgm7`(`id`) on delete CASCADE,
	primary key (`child_id`, `parent_id`)
);
INSERT INTO fld7u72oymt_tblk4h9pgm7_closure_table
VALUES('rec3k4cw1m8', 'rec3k4cw1m8', 0);
CREATE TABLE `tblpgqt9f8e` (
	`auto_increment` integer not null primary key autoincrement,
	`id` varchar(255) not null,
	`created_at` datetime not null default CURRENT_TIMESTAMP,
	`created_by` varchar(255) not null,
	`updated_at` datetime not null default CURRENT_TIMESTAMP,
	`updated_by` varchar(255) not null,
	`deleted_at` datetime null,
	`deleted_by` varchar(255),
	`fld5vejsyk6` varchar(255),
	`fldrf5tre1y` boolean default '0',
	`fld5dfxirz4` varchar(255),
	`fldin0o52s2` varchar(255),
	`fld234mahi3` varchar(255),
	`fldknol0wfv` varchar(255),
	`flda93at8lf` datetime,
	`fldu4iy99hy` varchar(255),
	`fldmv3t03kj` varchar(255)
);
INSERT INTO tblpgqt9f8e
VALUES(
		1,
		'recmqxqukzi',
		'2023-05-27 16:49:59',
		'usrbuajh55q',
		'2023-05-27 18:03:45',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 1',
		1,
		'optj07q2',
		'570 Annadale Lane Hollywood, FL 33024',
		'17654467896',
		'ricky@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		2,
		'recxbmwn526',
		'2023-05-27 16:50:05',
		'usrbuajh55q',
		'2023-05-27 18:03:50',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 2',
		1,
		'optomi94',
		'80 Rockwell Street Hialeah, FL 33014',
		'17654535432',
		'herio@email.com',
		'2023-03-20T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		3,
		'recf66q4c66',
		'2023-05-27 16:50:11',
		'usrbuajh55q',
		'2023-05-27 18:22:22',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 3',
		1,
		'optomi94',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		4,
		'rechdr1yisr',
		'2023-05-27 16:50:18',
		'usrbuajh55q',
		'2023-05-27 18:22:28',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 4',
		0,
		'opt5jwgs',
		'275 Madison St. Deltona, FL 32738',
		'12343566573',
		'jason@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		5,
		'recsphoiqqx',
		'2023-05-27 16:50:23',
		'usrbuajh55q',
		'2023-05-27 18:22:33',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 5',
		0,
		'opt44e5z',
		'93 Roosevelt Street Pompano Beach, FL 33063',
		'15463245786',
		'spakins@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		6,
		'reckvboinmy',
		'2023-05-27 17:31:26',
		'usrbuajh55q',
		'2023-05-27 18:22:40',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 14',
		1,
		'opthy6me',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		7,
		'recn0sdzkyo',
		'2023-05-27 17:31:33',
		'usrbuajh55q',
		'2023-05-27 18:22:48',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 15',
		1,
		'opt5jwgs',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		8,
		'recfgrtxasi',
		'2023-05-27 17:31:37',
		'usrbuajh55q',
		'2023-05-27 18:22:53',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 16',
		1,
		'opthy6me',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		9,
		'recimvejs9i',
		'2023-05-27 17:31:40',
		'usrbuajh55q',
		'2023-05-27 18:22:59',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 17',
		1,
		'optuous4',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		10,
		'recxxwkq3cy',
		'2023-05-27 17:31:44',
		'usrbuajh55q',
		'2023-05-27 18:23:05',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 20',
		1,
		'optzeb02',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		11,
		'rec6o4ikwst',
		'2023-05-27 17:31:47',
		'usrbuajh55q',
		'2023-05-27 18:24:03',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 10',
		1,
		'opthy6me',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		12,
		'reconl710uy',
		'2023-05-27 17:31:50',
		'usrbuajh55q',
		'2023-05-27 18:24:10',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 19',
		1,
		'optzeb02',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		13,
		'recn6dwtr57',
		'2023-05-27 17:31:54',
		'usrbuajh55q',
		'2023-05-27 18:24:14',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 35',
		1,
		'optzeb02',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		14,
		'rec2mj3ncpd',
		'2023-05-27 17:31:57',
		'usrbuajh55q',
		'2023-05-27 18:24:19',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 9',
		0,
		'optuous4',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		15,
		'recg6l1mhgw',
		'2023-05-27 17:32:00',
		'usrbuajh55q',
		'2023-05-27 18:24:24',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 29',
		1,
		'optzeb02',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		16,
		'rec9nhv2hfp',
		'2023-05-27 17:32:04',
		'usrbuajh55q',
		'2023-05-27 18:24:31',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 12',
		1,
		'opt44e5z',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		17,
		'rec0xps5wp7',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:26:17',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 8',
		1,
		'optomi94',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		18,
		'recslzzs1j7',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:26:21',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 22',
		1,
		'optj07q2',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		19,
		'recr8tj95zx',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:26:26',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 21',
		1,
		'optzeb02',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		20,
		'recw5uvl3fr',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:26:31',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 23',
		1,
		'optuous4',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		21,
		'reck80rd3yz',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:26:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 24',
		1,
		'optzeb02',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		22,
		'reclg36i38w',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:26:45',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 25',
		1,
		'optj07q2',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		23,
		'recwv3efxie',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:26:50',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 33',
		0,
		'opt5jwgs',
		'275 Madison St. Deltona, FL 32738',
		'12343566573',
		'jason@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		24,
		'reco6exsqfy',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:26:55',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 26',
		1,
		'optzeb02',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		25,
		'recagsll0f9',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:27:09',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 13',
		1,
		'optj07q2',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		26,
		'recvu6izy0x',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:27:01',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 34',
		0,
		'optj07q2',
		'570 Annadale Lane Hollywood, FL 33024',
		'17654467896',
		'ricky@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		27,
		'recqxf6vqjf',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:27:14',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 27',
		1,
		'opt5jwgs',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		28,
		'recuj2x79z2',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:27:18',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 28',
		1,
		'optzeb02',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		29,
		'recyguy1doa',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:27:24',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 30',
		1,
		'optzeb02',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		30,
		'recep1vxcr3',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:27:29',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 31',
		0,
		'opt44e5z',
		'93 Roosevelt Street Pompano Beach, FL 33063',
		'15463245786',
		'spakins@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		31,
		'recy6qugwr5',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:27:34',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 32',
		1,
		'optomi94',
		'80 Rockwell Street Hialeah, FL 33014',
		'17654535432',
		'herio@email.com',
		'2023-03-20T16:00:00.000Z',
		NULL,
		'optednbl'
	);
INSERT INTO tblpgqt9f8e
VALUES(
		32,
		'rec6r3ewvj9',
		'2023-05-27 17:32:27',
		'usrbuajh55q',
		'2023-05-27 18:27:39',
		'usrbuajh55q',
		NULL,
		NULL,
		'Subcontractor name 11',
		1,
		'opt5jwgs',
		'49 Bridle St. Tampa, FL 33615',
		'13125489655',
		'singer@email.com',
		'2023-05-27T16:00:00.000Z',
		NULL,
		'optqe1bf'
	);
CREATE TABLE `fldqetskkmf_tblk4h9pgm7_adjacency_list` (
	`to_id` varchar(255) not null,
	`from_id` varchar(255) not null,
	foreign key(`to_id`) references `tblk4h9pgm7`(`id`),
	foreign key(`from_id`) references `tblpgqt9f8e`(`id`),
	primary key (`to_id`, `from_id`)
);
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'recf66q4c66');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec07dly8bc', 'rechdr1yisr');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec36zg4g7u', 'recmqxqukzi');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('recutqc1wlt', 'recsphoiqqx');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec36zg4g7u', 'recxbmwn526');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'reckvboinmy');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'recn0sdzkyo');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'recfgrtxasi');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'recimvejs9i');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'recxxwkq3cy');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'recn6dwtr57');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'recg6l1mhgw');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'reck80rd3yz');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec07dly8bc', 'recwv3efxie');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec36zg4g7u', 'recvu6izy0x');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'recuj2x79z2');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'recyguy1doa');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('recutqc1wlt', 'recep1vxcr3');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec36zg4g7u', 'recy6qugwr5');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'rec0xps5wp7');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('recj2ca89m4', 'rec2mj3ncpd');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('recwczl6uep', 'rec6o4ikwst');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('recutqc1wlt', 'rec6r3ewvj9');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec1sc83549', 'rec9nhv2hfp');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec1sc83549', 'recagsll0f9');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec36zg4g7u', 'reconl710uy');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec07dly8bc', 'recr8tj95zx');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec36zg4g7u', 'recslzzs1j7');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec1sc83549', 'recw5uvl3fr');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('recj2ca89m4', 'reclg36i38w');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('rec1sc83549', 'reco6exsqfy');
INSERT INTO fldqetskkmf_tblk4h9pgm7_adjacency_list
VALUES('recj2ca89m4', 'recqxf6vqjf');
CREATE TABLE `tblfx77neny` (
	`auto_increment` integer not null primary key autoincrement,
	`id` varchar(255) not null,
	`created_at` datetime not null default CURRENT_TIMESTAMP,
	`created_by` varchar(255) not null,
	`updated_at` datetime not null default CURRENT_TIMESTAMP,
	`updated_by` varchar(255) not null,
	`deleted_at` datetime null,
	`deleted_by` varchar(255),
	`fldi3ctnklu` varchar(255),
	`fldxgzu2rfm` varchar(255),
	`fldx46wrlru` varchar(255),
	`fldisycq2kk` varchar(255),
	`fldf3858jba` varchar(255),
	`fldzcbm7d6f` varchar(255),
	`fldfhnwfm1d` varchar(255),
	`fld5tprv6oh` varchar(255),
	`fld9k1d6632` varchar(255),
	`fldqt93dh02` varchar(255),
	`fldicbkx09x` varchar(255),
	`fldrwyxeapl` datetime
);
INSERT INTO tblfx77neny
VALUES(
		1,
		'recblayey9u',
		'2023-05-27 08:09:37',
		'usrbuajh55q',
		'2023-05-27 08:10:25',
		'usrbuajh55q',
		1685175025977,
		'usrbuajh55q',
		'Adress/ Unit 1',
		'',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO tblfx77neny
VALUES(
		2,
		'rechppb6411',
		'2023-05-27 08:11:39',
		'usrbuajh55q',
		'2023-05-27 08:11:52',
		'usrbuajh55q',
		1685175112515,
		'usrbuajh55q',
		'Address / Unit 1',
		'',
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	);
INSERT INTO tblfx77neny
VALUES(
		3,
		'recx6x4ummz',
		'2023-05-27 08:12:22',
		'usrbuajh55q',
		'2023-05-27 17:16:25',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 3',
		'124 Glenridge Drive Spring Valley, CA 91977',
		'optk9i7d',
		'opt4zm1b',
		'optj31dv',
		'optta5lv',
		'optdrqmq',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		4,
		'recnvwfvt2t',
		'2023-05-27 16:53:33',
		'usrbuajh55q',
		'2023-05-27 16:53:33',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 1',
		'177 Griffin St. Los Angeles, CA 90001',
		'optk9i7d',
		'opt4zm1b',
		'optj31dv',
		'optta5lv',
		'optektao',
		'optkxfmz',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-03-15T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		5,
		'rect3ufkcmf',
		'2023-05-27 17:00:42',
		'usrbuajh55q',
		'2023-05-27 17:16:36',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 2',
		'97 Old Water St. Los Angeles, CA 90066',
		'optk9i7d',
		'opt4zm1b',
		'optj31dv',
		'optta5lv',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		6,
		'recf6mbeoc2',
		'2023-05-27 17:11:51',
		'usrbuajh55q',
		'2023-05-27 17:12:46',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 4',
		'9569 Theatre St. Oceanside, CA 92056',
		'optk9i7d',
		'opt4zm1b',
		'optxwahs',
		'optuvv04',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		7,
		'rec89s7wu7q',
		'2023-05-27 17:15:15',
		'usrbuajh55q',
		'2023-05-27 17:18:23',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 6',
		'9876 Fulton Lane San Jose, CA 95116',
		'optk9i7d',
		'opt4zm1b',
		'optxwahs',
		'optuvv04',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		8,
		'recoveqhc7w',
		'2023-05-27 17:18:06',
		'usrbuajh55q',
		'2023-05-27 17:18:06',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 5',
		'45 Young Street San Jose, CA 95127',
		'optk9i7d',
		'opt4zm1b',
		'optxwahs',
		'optuvv04',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		9,
		'rec2a2eptuh',
		'2023-05-27 17:19:56',
		'usrbuajh55q',
		'2023-05-27 17:21:21',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 7',
		'WFG National Title Company, Northeast 8th Street',
		'optk9i7d',
		'optij18u',
		'optppv4b',
		'optkz4m0',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		10,
		'reckcrau21x',
		'2023-05-27 17:48:35',
		'usrbuajh55q',
		'2023-05-27 17:50:37',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 8',
		'WFG National Title Company, Northeast 8th Street',
		'optk9i7d',
		'optij18u',
		'optppv4b',
		'optkz4m0',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		11,
		'rec0ubntf41',
		'2023-05-27 17:48:35',
		'usrbuajh55q',
		'2023-05-27 17:50:45',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 9',
		'9876 Fulton Lane San Jose, CA 95116',
		'optk9i7d',
		'opt4zm1b',
		'optxwahs',
		'optuvv04',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		12,
		'rec297sk93x',
		'2023-05-27 17:48:35',
		'usrbuajh55q',
		'2023-05-27 17:50:54',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 10',
		'9569 Theatre St. Oceanside, CA 92056',
		'optk9i7d',
		'opt4zm1b',
		'optxwahs',
		'optuvv04',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		13,
		'rec6tnaqs1l',
		'2023-05-27 17:48:35',
		'usrbuajh55q',
		'2023-05-27 17:51:03',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 11',
		'177 Griffin St. Los Angeles, CA 90001',
		'optk9i7d',
		'opt4zm1b',
		'optj31dv',
		'optta5lv',
		'optektao',
		'optkxfmz',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-03-15T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		14,
		'recw4knspec',
		'2023-05-27 17:48:35',
		'usrbuajh55q',
		'2023-05-27 17:51:14',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 12',
		'45 Young Street San Jose, CA 95127',
		'optk9i7d',
		'opt4zm1b',
		'optxwahs',
		'optuvv04',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		15,
		'rec80w483it',
		'2023-05-27 17:48:35',
		'usrbuajh55q',
		'2023-05-27 17:51:22',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 13',
		'97 Old Water St. Los Angeles, CA 90066',
		'optk9i7d',
		'opt4zm1b',
		'optj31dv',
		'optta5lv',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		16,
		'recx8wdwctx',
		'2023-05-27 17:48:35',
		'usrbuajh55q',
		'2023-05-27 17:51:30',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 14',
		'124 Glenridge Drive Spring Valley, CA 91977',
		'optk9i7d',
		'opt4zm1b',
		'optj31dv',
		'optta5lv',
		'optdrqmq',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		17,
		'reckyuq3lyw',
		'2023-05-27 17:49:36',
		'usrbuajh55q',
		'2023-05-27 17:51:38',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 15',
		'9876 Fulton Lane San Jose, CA 95116',
		'optk9i7d',
		'opt4zm1b',
		'optxwahs',
		'optuvv04',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		18,
		'rech2zlvhgx',
		'2023-05-27 17:49:36',
		'usrbuajh55q',
		'2023-05-27 17:51:47',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 16',
		'9569 Theatre St. Oceanside, CA 92056',
		'optk9i7d',
		'opt4zm1b',
		'optxwahs',
		'optuvv04',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		19,
		'rece5fhnsus',
		'2023-05-27 17:49:36',
		'usrbuajh55q',
		'2023-05-27 17:51:55',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 17',
		'177 Griffin St. Los Angeles, CA 90001',
		'optk9i7d',
		'opt4zm1b',
		'optj31dv',
		'optta5lv',
		'optektao',
		'optkxfmz',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-03-15T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		20,
		'recmwb7bkxx',
		'2023-05-27 17:49:36',
		'usrbuajh55q',
		'2023-05-27 17:52:03',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 18',
		'97 Old Water St. Los Angeles, CA 90066',
		'optk9i7d',
		'opt4zm1b',
		'optj31dv',
		'optta5lv',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		21,
		'rec734usgen',
		'2023-05-27 17:49:36',
		'usrbuajh55q',
		'2023-05-27 17:52:10',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 19',
		'WFG National Title Company, Northeast 8th Street',
		'optk9i7d',
		'optij18u',
		'optppv4b',
		'optkz4m0',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		22,
		'recutcmrgjy',
		'2023-05-27 17:49:36',
		'usrbuajh55q',
		'2023-05-27 17:52:18',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 20',
		'45 Young Street San Jose, CA 95127',
		'optk9i7d',
		'opt4zm1b',
		'optxwahs',
		'optuvv04',
		'opt6eado',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
INSERT INTO tblfx77neny
VALUES(
		23,
		'rec4f5oh4ao',
		'2023-05-27 17:49:36',
		'usrbuajh55q',
		'2023-05-27 17:52:28',
		'usrbuajh55q',
		NULL,
		NULL,
		'Address / Unit 21',
		'124 Glenridge Drive Spring Valley, CA 91977',
		'optk9i7d',
		'opt4zm1b',
		'optj31dv',
		'optta5lv',
		'optdrqmq',
		'optzzqb3',
		'optjmdk5',
		'optbh9nh',
		'opt3icrr',
		'2023-05-02T16:00:00.000Z'
	);
CREATE TABLE `fldxjfi8nvf_collaborator` (
	`user_id` varchar(255) not null,
	`record_id` varchar(255) not null,
	foreign key(`user_id`) references `undb_user`(`id`),
	foreign key(`record_id`) references `tblfx77neny`(`id`),
	primary key (`record_id`, `user_id`)
);
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'recnvwfvt2t');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'recx6x4ummz');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'rect3ufkcmf');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'recf6mbeoc2');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'rec89s7wu7q');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'recoveqhc7w');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'rec2a2eptuh');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'reckcrau21x');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'rec0ubntf41');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'rec297sk93x');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'rec6tnaqs1l');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'recw4knspec');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'rec80w483it');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'recx8wdwctx');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'reckyuq3lyw');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'rech2zlvhgx');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'rece5fhnsus');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'recmwb7bkxx');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'rec734usgen');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'recutcmrgjy');
INSERT INTO fldxjfi8nvf_collaborator
VALUES('usrbuajh55q', 'rec4f5oh4ao');
CREATE TABLE `fldifd9g29a_tblk4h9pgm7_adjacency_list` (
	`to_id` varchar(255) not null,
	`from_id` varchar(255) not null,
	foreign key(`to_id`) references `tblk4h9pgm7`(`id`),
	foreign key(`from_id`) references `tblfx77neny`(`id`),
	primary key (`to_id`, `from_id`)
);
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('rec1sc83549', 'recnvwfvt2t');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('recj2ca89m4', 'recf6mbeoc2');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('rec3k4cw1m8', 'recx6x4ummz');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('rec36zg4g7u', 'rect3ufkcmf');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('recwczl6uep', 'recoveqhc7w');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('rec07dly8bc', 'rec89s7wu7q');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('rec07dly8bc', 'rec2a2eptuh');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('rec11ofngc2', 'reckcrau21x');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('reccyhbbf5q', 'rec0ubntf41');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('recj2h464yu', 'rec297sk93x');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('recmcfa13pa', 'rec6tnaqs1l');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('recmghvocq5', 'recw4knspec');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('recqoc8f07w', 'rec80w483it');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('recvyuc044p', 'recx8wdwctx');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('rec78ri5r2y', 'reckyuq3lyw');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('recbcwnjg5s', 'rech2zlvhgx');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('rece4yfbg4j', 'rece5fhnsus');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('reci2l4mi3d', 'recmwb7bkxx');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('rect5xwmeqn', 'rec734usgen');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('recw2phx7cz', 'recutcmrgjy');
INSERT INTO fldifd9g29a_tblk4h9pgm7_adjacency_list
VALUES('recy0gptap1', 'rec4f5oh4ao');
CREATE TABLE `flds4gpji6k_collaborator` (
	`user_id` varchar(255) not null,
	`record_id` varchar(255) not null,
	foreign key(`user_id`) references `undb_user`(`id`),
	foreign key(`record_id`) references `tblk4h9pgm7`(`id`),
	primary key (`record_id`, `user_id`)
);
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'rec3k4cw1m8');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'rec1sc83549');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'rec36zg4g7u');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'recj2ca89m4');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'recwczl6uep');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'rec07dly8bc');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'recutqc1wlt');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'recmghvocq5');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'reccyhbbf5q');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'recvyuc044p');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'recj2h464yu');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'rec11ofngc2');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'recmcfa13pa');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'recqoc8f07w');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'recy0gptap1');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'recw2phx7cz');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'rect5xwmeqn');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'recbcwnjg5s');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'rec78ri5r2y');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'reci2l4mi3d');
INSERT INTO flds4gpji6k_collaborator
VALUES('usrbuajh55q', 'rece4yfbg4j');
CREATE TABLE `fldzhfhodco_tblpgqt9f8e_adjacency_list` (
	`to_id` varchar(255) not null,
	`from_id` varchar(255) not null,
	foreign key(`to_id`) references `tblpgqt9f8e`(`id`),
	foreign key(`from_id`) references `tblk4h9pgm7`(`id`),
	primary key (`to_id`, `from_id`)
);
CREATE TABLE `fld5dje464n_collaborator` (
	`user_id` varchar(255) not null,
	`record_id` varchar(255) not null,
	foreign key(`user_id`) references `undb_user`(`id`),
	foreign key(`record_id`) references `tblk4h9pgm7`(`id`),
	primary key (`record_id`, `user_id`)
);
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'rec3k4cw1m8');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'rec1sc83549');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'rec36zg4g7u');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'recj2ca89m4');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'recwczl6uep');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'rec07dly8bc');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'recutqc1wlt');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'recmghvocq5');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'reccyhbbf5q');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'recvyuc044p');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'recj2h464yu');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'rec11ofngc2');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'recmcfa13pa');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'recqoc8f07w');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'recy0gptap1');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'recw2phx7cz');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'rect5xwmeqn');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'recbcwnjg5s');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'rec78ri5r2y');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'reci2l4mi3d');
INSERT INTO fld5dje464n_collaborator
VALUES('usrbuajh55q', 'rece4yfbg4j');
CREATE TABLE `fld4h9alzho_tblfx77neny_adjacency_list` (
	`to_id` varchar(255) not null,
	`from_id` varchar(255) not null,
	foreign key(`to_id`) references `tblfx77neny`(`id`),
	foreign key(`from_id`) references `tblk4h9pgm7`(`id`),
	primary key (`to_id`, `from_id`)
);
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('recx6x4ummz', 'rec3k4cw1m8');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('recnvwfvt2t', 'rec1sc83549');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('rect3ufkcmf', 'rec36zg4g7u');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('recf6mbeoc2', 'recj2ca89m4');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('recoveqhc7w', 'recwczl6uep');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('rec2a2eptuh', 'rec07dly8bc');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('rec89s7wu7q', 'recutqc1wlt');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('reckcrau21x', 'rec11ofngc2');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('rec0ubntf41', 'reccyhbbf5q');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('rec297sk93x', 'recj2h464yu');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('rec6tnaqs1l', 'recmcfa13pa');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('recw4knspec', 'recmghvocq5');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('rec80w483it', 'recqoc8f07w');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('recx8wdwctx', 'recvyuc044p');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('reckyuq3lyw', 'rec78ri5r2y');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('rech2zlvhgx', 'recbcwnjg5s');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('rece5fhnsus', 'rece4yfbg4j');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('recmwb7bkxx', 'reci2l4mi3d');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('rec734usgen', 'rect5xwmeqn');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('recutcmrgjy', 'recw2phx7cz');
INSERT INTO fld4h9alzho_tblfx77neny_adjacency_list
VALUES('rec4f5oh4ao', 'recy0gptap1');
CREATE TABLE `fldome9lb5l_tblk4h9pgm7_closure_table` (
	`child_id` varchar(255) not null,
	`parent_id` varchar(255) not null,
	`depth` integer not null default '0',
	foreign key(`child_id`) references `tblk4h9pgm7`(`id`) on delete CASCADE,
	foreign key(`parent_id`) references `tblk4h9pgm7`(`id`) on delete CASCADE,
	primary key (`child_id`, `parent_id`)
);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('rec3k4cw1m8', 'rec3k4cw1m8', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('rec1sc83549', 'rec1sc83549', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('rec36zg4g7u', 'rec36zg4g7u', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('recj2ca89m4', 'recj2ca89m4', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('recwczl6uep', 'recwczl6uep', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('rec07dly8bc', 'rec07dly8bc', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('recutqc1wlt', 'recutqc1wlt', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('recmghvocq5', 'recmghvocq5', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('reccyhbbf5q', 'reccyhbbf5q', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('recvyuc044p', 'recvyuc044p', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('recmcfa13pa', 'recmcfa13pa', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('recj2h464yu', 'recj2h464yu', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('rec11ofngc2', 'rec11ofngc2', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('recqoc8f07w', 'recqoc8f07w', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('recw2phx7cz', 'recw2phx7cz', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('recbcwnjg5s', 'recbcwnjg5s', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('rec78ri5r2y', 'rec78ri5r2y', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('rece4yfbg4j', 'rece4yfbg4j', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('recy0gptap1', 'recy0gptap1', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('rect5xwmeqn', 'rect5xwmeqn', 0);
INSERT INTO fldome9lb5l_tblk4h9pgm7_closure_table
VALUES('reci2l4mi3d', 'reci2l4mi3d', 0);
CREATE TABLE `tblq36e537c` (
	`auto_increment` integer not null primary key autoincrement,
	`id` varchar(255) not null,
	`created_at` datetime not null default CURRENT_TIMESTAMP,
	`created_by` varchar(255) not null,
	`updated_at` datetime not null default CURRENT_TIMESTAMP,
	`updated_by` varchar(255) not null,
	`deleted_at` datetime null,
	`deleted_by` varchar(255),
	`fld3nlurfbt` varchar(255)
);
INSERT INTO tblq36e537c
VALUES(
		1,
		'recmws5sz9d',
		'2023-05-27 09:10:24',
		'usrbuajh55q',
		'2023-05-27 09:10:24',
		'usrbuajh55q',
		NULL,
		NULL,
		'a'
	);
CREATE TABLE `fldft7edqw6_tblq36e537c_closure_table` (
	`child_id` varchar(255) not null,
	`parent_id` varchar(255) not null,
	`depth` integer not null default '0',
	foreign key(`child_id`) references `tblq36e537c`(`id`) on delete CASCADE,
	foreign key(`parent_id`) references `tblq36e537c`(`id`) on delete CASCADE,
	primary key (`child_id`, `parent_id`)
);
INSERT INTO fldft7edqw6_tblq36e537c_closure_table
VALUES('recmws5sz9d', 'recmws5sz9d', 0);
CREATE TABLE `fldq5ohh7hx_tblruubokdc_closure_table` (
	`child_id` varchar(255) not null,
	`parent_id` varchar(255) not null,
	`depth` integer not null default '0',
	foreign key(`child_id`) references `tblruubokdc`(`id`) on delete CASCADE,
	foreign key(`parent_id`) references `tblruubokdc`(`id`) on delete CASCADE,
	primary key (`child_id`, `parent_id`)
);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recjh3moqxr', 'recjh3moqxr', 0);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recm1kabi9l', 'recm1kabi9l', 0);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recsuqouv2q', 'recsuqouv2q', 0);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recngzo73ge', 'recngzo73ge', 0);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recvpmpb1bv', 'recvpmpb1bv', 0);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recngzo73ge', 'recsuqouv2q', 1);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recjh3moqxr', 'recngzo73ge', 1);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recjh3moqxr', 'recsuqouv2q', 2);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recm1kabi9l', 'recngzo73ge', 1);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recm1kabi9l', 'recsuqouv2q', 2);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recvpmpb1bv', 'recm1kabi9l', 1);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recvpmpb1bv', 'recngzo73ge', 2);
INSERT INTO fldq5ohh7hx_tblruubokdc_closure_table
VALUES('recvpmpb1bv', 'recsuqouv2q', 3);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence
VALUES('mikro_orm_migrations', 5);
INSERT INTO sqlite_sequence
VALUES('tbl4undb0lh', 24);
INSERT INTO sqlite_sequence
VALUES('tblramxgp7z', 4);
INSERT INTO sqlite_sequence
VALUES('tblwqjcq0x8', 4);
INSERT INTO sqlite_sequence
VALUES('tbl4ezqb49a', 9);
INSERT INTO sqlite_sequence
VALUES('tblruubokdc', 5);
INSERT INTO sqlite_sequence
VALUES('tbl2za35hbg', 68);
INSERT INTO sqlite_sequence
VALUES('tblk4h9pgm7', 21);
INSERT INTO sqlite_sequence
VALUES('tblfx77neny', 23);
INSERT INTO sqlite_sequence
VALUES('tblq36e537c', 1);
INSERT INTO sqlite_sequence
VALUES('tblpgqt9f8e', 32);
CREATE INDEX `undb_table_deleted_at_index` on `undb_table` (`deleted_at`);
CREATE INDEX `undb_field_deleted_at_index` on `undb_field` (`deleted_at`);
CREATE INDEX `undb_field_table_id_index` on `undb_field` (`table_id`);
CREATE INDEX `undb_field_type_index` on `undb_field` (`type`);
CREATE INDEX `undb_field_foreign_table_id_index` on `undb_field` (`foreign_table_id`);
CREATE UNIQUE INDEX `undb_field_symmetric_reference_field_id_unique` on `undb_field` (`symmetric_reference_field_id`);
CREATE INDEX `undb_field_count_reference_field_id_index` on `undb_field` (`count_reference_field_id`);
CREATE INDEX `undb_field_lookup_reference_field_id_index` on `undb_field` (`lookup_reference_field_id`);
CREATE INDEX `undb_field_sum_reference_field_id_index` on `undb_field` (`sum_reference_field_id`);
CREATE INDEX `undb_field_sum_aggregate_field_id_index` on `undb_field` (`sum_aggregate_field_id`);
CREATE INDEX `undb_field_average_reference_field_id_index` on `undb_field` (`average_reference_field_id`);
CREATE INDEX `undb_field_average_aggregate_field_id_index` on `undb_field` (`average_aggregate_field_id`);
CREATE INDEX `undb_option_deleted_at_index` on `undb_option` (`deleted_at`);
CREATE INDEX `undb_option_field_id_index` on `undb_option` (`field_id`);
CREATE INDEX `undb_attachment_deleted_at_index` on `undb_attachment` (`deleted_at`);
CREATE INDEX `undb_attachment_table_id_index` on `undb_attachment` (`table_id`);
CREATE INDEX `undb_attachment_mime_type_index` on `undb_attachment` (`mime_type`);
CREATE INDEX `undb_attachment_name_index` on `undb_attachment` (`name`);
CREATE INDEX `undb_attachment_size_index` on `undb_attachment` (`size`);
CREATE INDEX `undb_attachment_extension_index` on `undb_attachment` (`extension`);
CREATE INDEX `undb_field_display_fields_field_1_id_index` on `undb_field_display_fields` (`field_1_id`);
CREATE INDEX `undb_field_display_fields_field_2_id_index` on `undb_field_display_fields` (`field_2_id`);
CREATE INDEX `undb_user_deleted_at_index` on `undb_user` (`deleted_at`);
CREATE INDEX `undb_user_username_index` on `undb_user` (`username`);
CREATE INDEX `undb_user_email_index` on `undb_user` (`email`);
CREATE UNIQUE INDEX `undb_user_email_unique` on `undb_user` (`email`);
CREATE INDEX `undb_visualization_deleted_at_index` on `undb_visualization` (`deleted_at`);
CREATE INDEX `undb_visualization_type_index` on `undb_visualization` (`type`);
CREATE INDEX `undb_visualization_table_id_index` on `undb_visualization` (`table_id`);
CREATE INDEX `undb_widget_deleted_at_index` on `undb_widget` (`deleted_at`);
CREATE INDEX `undb_widget_view_id_index` on `undb_widget` (`view_id`);
CREATE UNIQUE INDEX `undb_widget_visualization_id_unique` on `undb_widget` (`visualization_id`);
CREATE INDEX `undb_view_deleted_at_index` on `undb_view` (`deleted_at`);
CREATE INDEX `undb_view_table_id_index` on `undb_view` (`table_id`);
CREATE TRIGGER update_at_update_tbl4undb0lh
AFTER
UPDATE ON `tbl4undb0lh` BEGIN
update `tbl4undb0lh`
SET updated_at = datetime('now')
WHERE id = NEW.id;
END;
CREATE UNIQUE INDEX `tbl4undb0lh_id_unique` on `tbl4undb0lh` (`id`);
CREATE TRIGGER update_at_update_tblramxgp7z
AFTER
UPDATE ON `tblramxgp7z` BEGIN
update `tblramxgp7z`
SET updated_at = datetime('now')
WHERE id = NEW.id;
END;
CREATE UNIQUE INDEX `tblramxgp7z_id_unique` on `tblramxgp7z` (`id`);
CREATE TRIGGER update_at_update_tblwqjcq0x8
AFTER
UPDATE ON `tblwqjcq0x8` BEGIN
update `tblwqjcq0x8`
SET updated_at = datetime('now')
WHERE id = NEW.id;
END;
CREATE UNIQUE INDEX `tblwqjcq0x8_id_unique` on `tblwqjcq0x8` (`id`);
CREATE INDEX `fld6pd0v553_tblwqjcq0x8_closure_table_depth_index` on `fld6pd0v553_tblwqjcq0x8_closure_table` (`depth`);
CREATE TRIGGER update_at_update_tbl4ezqb49a
AFTER
UPDATE ON `tbl4ezqb49a` BEGIN
update `tbl4ezqb49a`
SET updated_at = datetime('now')
WHERE id = NEW.id;
END;
CREATE UNIQUE INDEX `tbl4ezqb49a_id_unique` on `tbl4ezqb49a` (`id`);
CREATE TRIGGER update_at_update_tbl2za35hbg
AFTER
UPDATE ON `tbl2za35hbg` BEGIN
update `tbl2za35hbg`
SET updated_at = datetime('now')
WHERE id = NEW.id;
END;
CREATE UNIQUE INDEX `tbl2za35hbg_id_unique` on `tbl2za35hbg` (`id`);
CREATE TRIGGER update_at_update_tblruubokdc
AFTER
UPDATE ON `tblruubokdc` BEGIN
update `tblruubokdc`
SET updated_at = datetime('now')
WHERE id = NEW.id;
END;
CREATE UNIQUE INDEX `tblruubokdc_id_unique` on `tblruubokdc` (`id`);
CREATE INDEX `fld56n18njt_tblwqjcq0x8_closure_table_depth_index` on `fld56n18njt_tblwqjcq0x8_closure_table` (`depth`);
CREATE TRIGGER update_at_update_tblk4h9pgm7
AFTER
UPDATE ON `tblk4h9pgm7` BEGIN
update `tblk4h9pgm7`
SET updated_at = datetime('now')
WHERE id = NEW.id;
END;
CREATE UNIQUE INDEX `tblk4h9pgm7_id_unique` on `tblk4h9pgm7` (`id`);
CREATE INDEX `fld7u72oymt_tblk4h9pgm7_closure_table_depth_index` on `fld7u72oymt_tblk4h9pgm7_closure_table` (`depth`);
CREATE TRIGGER update_at_update_tblpgqt9f8e
AFTER
UPDATE ON `tblpgqt9f8e` BEGIN
update `tblpgqt9f8e`
SET updated_at = datetime('now')
WHERE id = NEW.id;
END;
CREATE UNIQUE INDEX `tblpgqt9f8e_id_unique` on `tblpgqt9f8e` (`id`);
CREATE TRIGGER update_at_update_tblfx77neny
AFTER
UPDATE ON `tblfx77neny` BEGIN
update `tblfx77neny`
SET updated_at = datetime('now')
WHERE id = NEW.id;
END;
CREATE UNIQUE INDEX `tblfx77neny_id_unique` on `tblfx77neny` (`id`);
CREATE INDEX `fldome9lb5l_tblk4h9pgm7_closure_table_depth_index` on `fldome9lb5l_tblk4h9pgm7_closure_table` (`depth`);
CREATE TRIGGER update_at_update_tblq36e537c
AFTER
UPDATE ON `tblq36e537c` BEGIN
update `tblq36e537c`
SET updated_at = datetime('now')
WHERE id = NEW.id;
END;
CREATE UNIQUE INDEX `tblq36e537c_id_unique` on `tblq36e537c` (`id`);
CREATE INDEX `fldft7edqw6_tblq36e537c_closure_table_depth_index` on `fldft7edqw6_tblq36e537c_closure_table` (`depth`);
CREATE INDEX `fldq5ohh7hx_tblruubokdc_closure_table_depth_index` on `fldq5ohh7hx_tblruubokdc_closure_table` (`depth`);
COMMIT;
create table `undb_outbox` (
	`uuid` text not null,
	`created_at` datetime not null,
	`updated_at` datetime not null,
	`deleted_at` datetime null,
	`name` text null,
	`operator_id` text null,
	`payload` json not null,
	primary key (`uuid`)
);
create index `undb_outbox_deleted_at_index` on `undb_outbox` (`deleted_at`);
create index `undb_option_name_index` on `undb_option` (`name`);
create table `undb_webhook` (
	`id` text not null,
	`created_at` datetime not null,
	`updated_at` datetime not null,
	`deleted_at` datetime null,
	`url` text not null,
	`name` text not null,
	`method` text not null,
	`headers` json not null,
	`target_id` text null,
	`target_type` text null,
	`event` text null,
	`enabled` integer not null default false,
	primary key (`id`)
);
create index `undb_webhook_deleted_at_index` on `undb_webhook` (`deleted_at`);
create index `undb_webhook_url_index` on `undb_webhook` (`url`);
create index `undb_webhook_name_index` on `undb_webhook` (`name`);
create index `undb_webhook_method_index` on `undb_webhook` (`method`);
create index `undb_webhook_target_id_index` on `undb_webhook` (`target_id`);
create index `undb_webhook_event_index` on `undb_webhook` (`event`);