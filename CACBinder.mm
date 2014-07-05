#import "CACBinder.h"

CACBinder::CACBinder()
{
	handlers = [NSMutableDictionary new]; 
}



void CACBinder::bind(NSString* event, CACEventHandler aHandler)
{
	handlers[event] = aHandler;
}



void CACBinder::event(NSString* event, NSDictionary* params) 
{
	CACEventHandler theHandler = NULL;

	if (handlers[event]) {
		theHandler = handlers[event];
	} else if (handlers[@"*"]){
		theHandler = handlers[@"*"];
	}

	theHandler(params);
}


void CACBinder::redirect(CACBinder* binder, NSString* event)
{
	if (event == nil)
		event = @"*";

	handlers[event] = ^(NSDictionary* params) {

		binder.event(event, params);

	};
}
