import { serve } from "https://deno.land/std@0.57.0/http/server.ts";

const PORT = 8000;
const s = serve({ port: PORT });

console.log(`Server started on http://localhost:${PORT}/`);

for await (const req of s) {
  req.respond({
    headers: new Headers({
      "content-type": "application/json"
    }),
    status: 200,
    body: '{"live": "ok"}'
  });
}
