import { createBrowserRouter } from "react-router-dom";
import React from "react";

const FullLayout = React.lazy(() => import("@layout/full/FullLayout"));
const Home = React.lazy(() => import("@pages/Home"));
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
            element: <Home />,
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
