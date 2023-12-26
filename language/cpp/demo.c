static struct man {
	char name[20];
	int age;
}person[] = { "li=ming",18,
		  "wang-hua",19,
		   "zhang-ping",20
};

main()
{
	struct man* p, * q;
	int old = 0;
	p = person;
	for (; p<p+3; p++)
		if (old < p->age)
		{
			q = p;
			old = p->age;
		}
	printf("%s %d", q->name,q->age);
}

