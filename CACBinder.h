/**
 *  Event binder for classes based on work of Manolis Tsangaris.
 *
 */
typedef void (^CACEventHandler)(NSDictionary* params);

class CACBinder {

public:
	CACBinder();

	void bind(NSString* event, CACEventHandler handler);
	void event(NSString* event, NSDictionary* params) const;
	void redirect(const CACBinder& binder, NSString* event);

private:
	NSMutableDictionary* handlers;

};

