import { createBrowserRouter } from "react-router-dom";
import React from "react";
import JudgmentsPage from "@pages/akoma-ntoso/judgments/JudgmentsPage";

const FullLayout = React.lazy(() => import("@layout/full/FullLayout"));
const JudgmentsAndLawsPage = React.lazy(
  () => import("@pages/judgments-laws/JudgmentsAndLawsPage")
);
const ErrorPage = React.lazy(() => import("@pages/Error/ErrorPage"));
const NotFoundPage = React.lazy(() => import("@pages/Error/NotFoundPage"));

const browserConfig = createBrowserRouter([
  {
    id: "layout-auth",
    path: "/",
    element: <FullLayout />,
    children: [
      {
        id: "dashboard",
        path: "/",
        children: [
          {
            index: true,
            element: <JudgmentsAndLawsPage />,
            errorElement: <ErrorPage />,
          },
        ],
      },
      {
        id: "akoma-judgments",
        path: "/akoma-judgments",
        children: [
          {
            index: true,
            element: <JudgmentsPage />,
            errorElement: <ErrorPage />,
          },
        ],
      },
      {
        id: "notFound",
        path: "*",
        element: <NotFoundPage />,
      },
    ],
  },
]);

export default browserConfig;
