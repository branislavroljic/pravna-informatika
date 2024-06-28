import { FC, useEffect } from "react";
import { styled, Container, Box, useTheme } from "@mui/material";
import { Navigate, Outlet } from "react-router-dom";
import Header from "./vertical/header/Header";
import Sidebar from "./vertical/sidebar/Sidebar";
import ScrollToTop from "@ui/shared/ScrollToTop";
import Notification from "@ui/Notification";
import { useCustomizerStore } from "@stores/customizerStore";
import { useNotificationStore } from "@stores/notificationStore";
import useAuthStore from "@stores/authStore";

const MainWrapper = styled("div")(() => ({
  display: "flex",
  minHeight: "100vh",
  width: "100%",
}));

const PageWrapper = styled("div")(() => ({
  display: "flex",
  flexGrow: 1,
  paddingBottom: "0px",
  flexDirection: "column",
  zIndex: 1,
  width: "100%",
  backgroundColor: "transparent",
}));

const FullLayout: FC = () => {
  // const [anchorEl, setAnchorEl] = React.useState<null | HTMLElement>(null);
  // const customizer = useSelector((state: AppState) => state.customizer);
  const { isCollapse, MiniSidebarWidth, isLayout } = useCustomizerStore();

  const theme = useTheme();

  const { isOpen, data, closeNotification } = useNotificationStore();

  const { isValid } = useAuthStore((state) => state);

  useEffect(() => {
    if (isOpen) {
      setTimeout(() => closeNotification(), 3000);
    }
  }, [closeNotification, isOpen]);

  if (!isValid) {
    return <Navigate to={"/login"} replace={true} />;
  }

  return (
    <ScrollToTop>
      <MainWrapper>
        {/* ------------------------------------------- */}
        {/* Sidebar */}
        {/* ------------------------------------------- */}
        <Sidebar />
        {/* ------------------------------------------- */}
        {/* Main Wrapper */}
        {/* ------------------------------------------- */}
        <PageWrapper
          className="page-wrapper"
          sx={{
            ...(isCollapse && {
              [theme.breakpoints.up("lg")]: {
                ml: `${MiniSidebarWidth}px`,
              },
            }),
          }}
        >
          {/* ------------------------------------------- */}
          {/* Header */}
          {/* ------------------------------------------- */}
          {/* <Header/> */}
          {/* PageContent */}
          <Container
            sx={{
              maxWidth: isLayout === "boxed" ? "lg" : "100%!important",
            }}
          >
            {/* ------------------------------------------- */}
            {/* PageContent */}
            {/* ------------------------------------------- */}

            <Box sx={{ minHeight: "calc(100vh - 100px)" }}>
              <Outlet />
            </Box>

            <Notification
              isShowing={isOpen}
              primaryText={data.primaryText ?? ""}
              secondaryText={data.secondaryText}
              isError={data.isError}
              closeNotification={closeNotification}
            />

            {/* ------------------------------------------- */}
            {/* End Page */}
            {/* ------------------------------------------- */}
          </Container>
          {/* <Customizer /> */}
        </PageWrapper>
      </MainWrapper>
    </ScrollToTop>
  );
};

export default FullLayout;
