#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "checkmark" asset catalog image resource.
static NSString * const ACImageNameCheckmark AC_SWIFT_PRIVATE = @"checkmark";

/// The "mountain" asset catalog image resource.
static NSString * const ACImageNameMountain AC_SWIFT_PRIVATE = @"mountain";

/// The "sunset" asset catalog image resource.
static NSString * const ACImageNameSunset AC_SWIFT_PRIVATE = @"sunset";

#undef AC_SWIFT_PRIVATE
