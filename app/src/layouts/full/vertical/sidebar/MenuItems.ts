import { uniqueId } from "lodash";
import QueryStatsIcon from "@mui/icons-material/QueryStats";

interface MenuitemsType {
  [x: string]: any;

  id?: string;
  navlabel?: boolean;
  subheader?: string;
  title?: string;
  icon?: any;
  href?: string;
  children?: MenuitemsType[];
  chip?: string;
  chipColor?: string;
  variant?: string;
  external?: boolean;
}

import { IconBasket, IconCoin } from "@tabler/icons-react";
import DashboardCustomizeOutlinedIcon from "@mui/icons-material/DashboardCustomizeOutlined";

const Menuitems = () =>
  [
    {
      navlabel: true,
      subheader: "PDF dokumenti",
    },
    {
      id: uniqueId(),
      title: "Presude i zakoni",
      icon: DashboardCustomizeOutlinedIcon,
      href: "/",
    },
    {
      navlabel: true,
      subheader: "Akoma Ntoso",
    },
    {
      id: uniqueId(),
      title: "Presude",
      icon: QueryStatsIcon,
      href: "/akoma-judgments",
    },
    {
      id: uniqueId(),
      title: "Zakoni",
      icon: IconBasket,
      href: "/akoma-laws",
    },
    {
      navlabel: true,
      subheader: "Akcije",
    },
    {
      id: uniqueId(),
      title: "Nova presuda",
      icon: IconCoin,
      href: "/payments",
    },
  ] as MenuitemsType[];

export default Menuitems;
