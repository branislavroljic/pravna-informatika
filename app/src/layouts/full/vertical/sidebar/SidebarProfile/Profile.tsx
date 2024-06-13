import { Box, Avatar, Typography, useMediaQuery } from "@mui/material";

import ProfileImg from "/src/assets/images/profile/user-1.jpg";
import { useCustomizerStore } from "@stores/customizerStore";

export const Profile = () => {
  const customizer = useCustomizerStore((state) => state);
  const lgUp = useMediaQuery((theme: any) => theme.breakpoints.up("lg"));
  const hideMenu = lgUp
    ? customizer.isCollapse && !customizer.isSidebarHover
    : "";

  return (
    <Box
      display={"flex"}
      alignItems="center"
      gap={2}
      sx={{ m: 3, p: 2, bgcolor: `${"secondary.main"}` }}
    >
      {!hideMenu ? (
        <>
          <Avatar src={ProfileImg} alt={ProfileImg} />

          <Box>
            <Typography variant="h6" color={"white"}>
              {"Pravna informatika"}
            </Typography>
          </Box>
        </>
      ) : (
        ""
      )}
    </Box>
  );
};
