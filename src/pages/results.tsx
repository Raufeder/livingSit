import { type NextPage } from "next";
import Head from "next/head";
import Router from "next/router";

const Results: NextPage = () => {
  return (
    <>
      <Head>
        <title>Derek Codes Where We Live</title>
        <meta name="description" content="Generated by create-t3-app" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <main className="flex min-h-screen flex-col items-center justify-start bg-slate-700 p-4">
        <h1 className="text-5xl font-extrabold leading-normal text-green-700 md:text-[5rem]">
          Results Page
        </h1>
        <div
          className="cursor-pointer text-5xl font-extrabold leading-normal text-green-700"
          onClick={() => Router.push("/")}
        >
          Back to Playing
        </div>
      </main>
    </>
  );
};

export default Results;