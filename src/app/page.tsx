import { prisma } from "@/lib/prisma";

export const dynamic = "force-dynamic";

export default async function Home() {
  let count: number | null = null;
  let errorMessage: string | null = null;

  try {
    count = await prisma.class.count();
  } catch (error) {
    errorMessage = error instanceof Error ? error.message : "Unknown error";
  }

  return (
    <main className="mx-auto flex min-h-screen max-w-2xl flex-col gap-6 p-8 font-sans">
      <h1 className="text-2xl font-semibold">ASW Scheduler</h1>
      <section className="rounded-lg border border-zinc-200 p-4 dark:border-zinc-800">
        <h2 className="font-medium">Database connection</h2>
        {errorMessage ? (
          <>
            <p className="mt-2 text-sm text-red-500">error</p>
            <pre className="mt-2 whitespace-pre-wrap text-sm text-red-500">
              {errorMessage}
            </pre>
          </>
        ) : (
          <>
            <p className="mt-2 text-sm text-green-600">connected</p>
            <p className="mt-1 text-sm">
              scheduled_classes rows: <strong>{count ?? 0}</strong>
            </p>
          </>
        )}
      </section>
    </main>
  );
}
