#define CHCLog(format,...) NSLog(@"[%@ %@ %p]" format,\
	NSStringFromClass([self class]),\
	NSStringFromSelector(_cmd), self, ##__VA_ARGS__);
