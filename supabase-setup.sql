create table if not exists public.calendar_state (
  id integer primary key check (id = 1),
  events jsonb not null default '[]'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.calendar_state enable row level security;
grant select, insert, update on public.calendar_state to anon;

 drop policy if exists "Shared calendar read" on public.calendar_state;
create policy "Shared calendar read" on public.calendar_state
  for select to anon using (true);
 drop policy if exists "Shared calendar create" on public.calendar_state;
create policy "Shared calendar create" on public.calendar_state
  for insert to anon with check (id = 1);
 drop policy if exists "Shared calendar update" on public.calendar_state;
create policy "Shared calendar update" on public.calendar_state
  for update to anon using (id = 1) with check (id = 1);

alter publication supabase_realtime add table public.calendar_state;
