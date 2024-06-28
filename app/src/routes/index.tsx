import { createBrowserRouter } from "react-router-dom";
import React from "react";
import JudgmentsPage from "@pages/akoma-ntoso/judgments/JudgmentsPage";
import LayoutUnauth from "@layout/LayoutUnauth";
import LoginPage from "@pages/auth/LoginPage";

const FullLayout = React.lazy(() => import("@layout/full/FullLayout"));
const JudgmentsAndLawsPage = React.lazy(
  () => import("@pages/judgments-laws/JudgmentsAndLawsPage")
);
const LawsPage = React.lazy(() => import("@pages/akoma-ntoso/laws/LawsPage"));
const NewCasePage = React.lazy(() => import("@pages/new-case/NewCasePage"));
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
        id: "akoma-laws",
        path: "/akoma-laws",
        children: [
          {
            index: true,
            element: <LawsPage />,
            errorElement: <ErrorPage />,
          },
        ],
      },
      {
        id: "new-case",
        path: "/new-case",
        children: [
          {
            index: true,
            element: <NewCasePage />,
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

  {
    id: "layout-unatuh",
    element: <LayoutUnauth />,
    children: [
      {
        id: "login",
        path: "/login",
        element: <LoginPage />,
      },
    ],
  },
]);

export default browserConfig;
