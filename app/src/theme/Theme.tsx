import _ from "lodash";
import { createTheme } from "@mui/material/styles";
import components from "./Components";
import typography from "./Typography";
import { shadows } from "./Shadows";
import { LightThemeColors } from "./LightThemeColors";
import { baselightTheme } from "./DefaultColors";
import * as locales from "@mui/material/locale";
import { useCustomizerStore } from "@stores/customizerStore";

export const BuildTheme = (config: any = {}) => {
  const themeOptions = LightThemeColors.find(
    (theme) => theme.name === config.theme
  );
  const customizer = useCustomizerStore();
  const defaultTheme = baselightTheme;
  const defaultShadow = shadows;
  const themeSelect = themeOptions;
  const baseMode = {
    palette: {
      mode: customizer.activeMode,
    },
    shape: {
      borderRadius: customizer.borderRadius,
    },
    shadows: defaultShadow,
    typography: typography,
  };
  const theme = createTheme(
    _.merge({}, baseMode, defaultTheme, locales, themeSelect, {
      direction: config.direction,
    })
  );
  theme.components = components(theme);

  return theme;
};

const ThemeSettings = () => {
  const activeTheme = useCustomizerStore((state) => state.activeTheme);
  const theme = BuildTheme({
    theme: activeTheme,
  });

  return theme;
};

export { ThemeSettings };
