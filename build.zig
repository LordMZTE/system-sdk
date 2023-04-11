const std = @import("std");
// Export actual System SDK
pub usingnamespace @import("system_sdk.zig");

pub fn build(b: *std.Build) void {
    // Might as well expose this for runtime use in the module
    _ = b.addModule("system-sdk", .{
        .source_file = .{ .path = "system_sdk.zig" },
    });
}
