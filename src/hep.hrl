%% Copyright (c) 2013, Matthias Endler <matthias.endler@pantech.at>
%% 
%% Permission to use, copy, modify, and distribute this software for any
%% purpose with or without fee is hereby granted, provided that the above
%% copyright notice and this permission notice appear in all copies.
%% 
%% THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
%% WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
%% MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
%% ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
%% WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
%% ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
%% OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

-ifndef(HEP_HRL).

-define(HEP_GENERIC(ChunkId), <<16#0000:16, ChunkId:16>>).
-define(HEP_IP_PROTOCOL_FAMILY, 16#0001).
-define(HEP_IP_PROTOCOL, 16#0002).
-define(HEP_IP_V4_SRC_ADDRESS, 16#0003).
-define(HEP_IP_V4_DST_ADDRESS, 16#0004).
-define(HEP_IP_V6_SRC_ADDRESS, 16#0005).
-define(HEP_IP_V6_DST_ADDRESS, 16#0006).
-define(HEP_PROTOCOL_SRC_PORT, 16#0007).
-define(HEP_PROTOCOL_DST_PORT, 16#0008).
-define(HEP_TIMESTAMP_SECS, 16#0009).
-define(HEP_TIMESTAMP_USECS, 16#000a).
-define(HEP_PAYLOAD_TYPE, 16#000b).
-define(HEP_CAPTURE_AGENT_ID, 16#000c).
-define(HEP_KEEP_ALIVE_SECS, 16#000d).
-define(HEP_AUTHENTICATE_KEY, 16#000e).
-define(HEP_PAYLOAD, 16#000f).

-record(hep, {
	version :: hep:version(),
	chunks = [] :: [hep:chunk()]
}).

-define(HEP_HRL, true).
-endif.
