(function (global, factory) {
  typeof exports === "object" && typeof module !== "undefined"
    ? factory(require("bootstrap"))
    : typeof define === "function" && define.amd
    ? define(["bootstrap"], factory)
    : ((global =
        typeof globalThis !== "undefined" ? globalThis : global || self),
      factory(global.bootstrap));
})(this, function (bootstrap) {
  "use strict";

  const docReady = (e) => {
    "loading" === document.readyState
      ? document.addEventListener("DOMContentLoaded", e)
      : setTimeout(e, 1);
  };
  const resize = (e) => window.addEventListener("resize", e);
  const isIterableArray = (e) => Array.isArray(e) && !!e.length;
  const camelize = (e) => {
    const t = e.replace(/[-_\s.]+(.)?/g, (e, t) => (t ? t.toUpperCase() : ""));
    return `${t.substr(0, 1).toLowerCase()}${t.substr(1)}`;
  };
  const getData = (e, t) => {
    try {
      return JSON.parse(e.dataset[camelize(t)]);
    } catch (o) {
      return e.dataset[camelize(t)];
    }
  };
  const hexToRgb = (e) => {
    let t;
    t = 0 === e.indexOf("#") ? e.substring(1) : e;
    const o = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(
      t.replace(
        /^#?([a-f\d])([a-f\d])([a-f\d])$/i,
        (e, t, o, r) => t + t + o + o + r + r
      )
    );
    return o
      ? [parseInt(o[1], 16), parseInt(o[2], 16), parseInt(o[3], 16)]
      : null;
  };
  const rgbaColor = (e = "#fff", t = 0.5) => `rgba(${hexToRgb(e)}, ${t})`;
  const getColor = (e, t = document.documentElement) =>
    getComputedStyle(t).getPropertyValue(`--phoenix-${e}`).trim();
  const hasClass = (e, t) => e.classList.value.includes(t);
  const addClass = (e, t) => {
    e.classList.add(t);
  };
  const getOffset = (e) => {
    const t = e.getBoundingClientRect(),
      o = window.pageXOffset || document.documentElement.scrollLeft,
      r = window.pageYOffset || document.documentElement.scrollTop;
    return { top: t.top + r, left: t.left + o };
  };
  const isScrolledIntoView = (e) => {
    let t = e.offsetTop,
      o = e.offsetLeft;
    const r = e.offsetWidth,
      s = e.offsetHeight;
    for (; e.offsetParent; )
      (t += (e = e.offsetParent).offsetTop), (o += e.offsetLeft);
    return {
      all:
        t >= window.pageYOffset &&
        o >= window.pageXOffset &&
        t + s <= window.pageYOffset + window.innerHeight &&
        o + r <= window.pageXOffset + window.innerWidth,
      partial:
        t < window.pageYOffset + window.innerHeight &&
        o < window.pageXOffset + window.innerWidth &&
        t + s > window.pageYOffset &&
        o + r > window.pageXOffset,
    };
  };
  const breakpoints = { xs: 0, sm: 576, md: 768, lg: 992, xl: 1200, xxl: 1540 };
  const getBreakpoint = (e) => {
    const t = e && e.classList.value;
    let o;
    return (
      t &&
        (o =
          breakpoints[
            t
              .split(" ")
              .filter((e) => e.includes("navbar-expand-"))
              .pop()
              .split("-")
              .pop()
          ]),
      o
    );
  };
  const setCookie = (e, t, o) => {
    const r = new Date();
    r.setTime(r.getTime() + o),
      (document.cookie = e + "=" + t + ";expires=" + r.toUTCString());
  };
  const getCookie = (e) => {
    var t = document.cookie.match("(^|;) ?" + e + "=([^;]*)(;|$)");
    return t ? t[2] : t;
  };
  const settings = {
    tinymce: { theme: "oxide" },
    chart: { borderColor: "rgba(255, 255, 255, 0.8)" },
  };
  const newChart = (e, t) => {
    const o = e.getContext("2d");
    return new window.Chart(o, t);
  };
  const getItemFromStore = (e, t, o = localStorage) => {
    try {
      return JSON.parse(o.getItem(e)) || t;
    } catch {
      return o.getItem(e) || t;
    }
  };
  const setItemToStore = (e, t, o = localStorage) => o.setItem(e, t);
  const getStoreSpace = (e = localStorage) =>
    parseFloat(
      (escape(encodeURIComponent(JSON.stringify(e))).length / 1048576).toFixed(
        2
      )
    );
  const getDates = (e, t, o = 864e5) => {
    const r = (t - e) / o;
    return Array.from(
      { length: r + 1 },
      (t, r) => new Date(e.valueOf() + o * r)
    );
  };
  const getPastDates = (e) => {
    let t;
    switch (e) {
      case "week":
        t = 7;
        break;
      case "month":
        t = 30;
        break;
      case "year":
        t = 365;
        break;
      default:
        t = e;
    }
    const o = new Date(),
      r = o,
      s = new Date(new Date().setDate(o.getDate() - (t - 1)));
    return getDates(s, r);
  };
  const getRandomNumber = (e, t) => Math.floor(Math.random() * (t - e) + e);
  var utils = {
    docReady: docReady,
    resize: resize,
    isIterableArray: isIterableArray,
    camelize: camelize,
    getData: getData,
    hasClass: hasClass,
    addClass: addClass,
    hexToRgb: hexToRgb,
    rgbaColor: rgbaColor,
    getColor: getColor,
    getOffset: getOffset,
    isScrolledIntoView: isScrolledIntoView,
    getBreakpoint: getBreakpoint,
    setCookie: setCookie,
    getCookie: getCookie,
    newChart: newChart,
    settings: settings,
    getItemFromStore: getItemFromStore,
    setItemToStore: setItemToStore,
    getStoreSpace: getStoreSpace,
    getDates: getDates,
    getPastDates: getPastDates,
    getRandomNumber: getRandomNumber,
  };

  const toastInit = () => {
    [].slice
      .call(document.querySelectorAll(".toast"))
      .map((t) => new bootstrap.Toast(t));
    const t = document.getElementById("liveToastBtn");
    if (t) {
      const e = new bootstrap.Toast(document.getElementById("liveToast"));
      t.addEventListener("click", () => {
        e && e.show();
      });
    }
  };

  const tooltipInit = () => {
    [].slice
      .call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
      .map((t) => new bootstrap.Tooltip(t, { trigger: "hover" }));
  };

  const featherIconsInit = () => {
    window.feather.replace({ width: "16px", height: "16px" });
  };

  const { merge: merge$2 } = window._;
  const echartSetOption = (e, o, s) => {
    console.log(merge$2(s(), o)), e.setOption(merge$2(s(), o));
  };

  const basicEchartsInit = () => {
    document.querySelectorAll("[data-echarts]").forEach((t) => {
      const o = getData(t, "echarts"),
        e = window.echarts.init(t);
      echartSetOption(e, o, () => ({
        color: getColor("primary"),
        tooltip: {
          trigger: "item",
          padding: [7, 10],
          backgroundColor: getColor("gray-100"),
          borderColor: getColor("gray-300"),
          textStyle: { color: getColor("dark") },
          borderWidth: 1,
          transitionDuration: 0,
        },
        xAxis: {
          type: "category",
          data: getDates(new Date("5/1/2022"), new Date("5/7/2022"), 864e5),
          show: !0,
          boundaryGap: !1,
          axisLine: { show: !0, lineStyle: { color: getColor("gray-200") } },
          axisTick: { show: !1 },
          axisLabel: {
            formatter: (t) => window.dayjs(t).format("DD MMM"),
            interval: 6,
            showMinLabel: !0,
            showMaxLabel: !0,
            color: getColor("gray-800"),
          },
        },
        yAxis: { show: !1, type: "value", boundaryGap: !1 },
        series: [{ type: "bar", symbol: "none" }],
        grid: { left: 22, right: 22, top: 0, bottom: 20 },
      }));
    });
  };

  const togglePaginationButtonDisable = (t, e) => {
      (t.disabled = e), t.classList[e ? "add" : "remove"]("disabled");
    },
    listInit = () => {
      if (window.List) {
        const t = document.querySelectorAll("[data-list]");
        t.length &&
          t.forEach((t) => {
            let e = getData(t, "list");
            e.pagination &&
              (e = {
                ...e,
                pagination: {
                  item: "<li><button class='page' type='button'></button></li>",
                  ...e.pagination,
                },
              });
            const i = t.querySelector('[data-list-pagination="next"]'),
              n = t.querySelector('[data-list-pagination="prev"]'),
              a = t.querySelector('[data-list-view="*"]'),
              s = t.querySelector('[data-list-view="less"]'),
              l = t.querySelector("[data-list-info]"),
              o = new List(t, e);
            o.on("updated", function (i) {
              const n =
                t.querySelector(".fallback") ||
                document.getElementById(e.fallback);
              n &&
                (0 === i.matchingItems.length
                  ? n.classList.remove("d-none")
                  : n.classList.add("d-none"));
            });
            const c = o.items.length,
              g = o.page,
              r = o.listContainer.querySelector(".btn-close");
            let d = Math.ceil(c / g),
              u = o.visibleItems.length,
              p = 1;
            r &&
              r.addEventListener("search.close", () => {
                o.fuzzySearch("");
              });
            const b = () => {
              l &&
                (l.innerHTML = `${o.i} to ${u} <span class='text-600'> Items of </span>${c}`),
                n && togglePaginationButtonDisable(n, 1 === p),
                i && togglePaginationButtonDisable(i, p === d),
                p > 1 &&
                  p < d &&
                  (togglePaginationButtonDisable(i, !1),
                  togglePaginationButtonDisable(n, !1));
            };
            b(),
              i &&
                i.addEventListener("click", (t) => {
                  t.preventDefault(), (p += 1);
                  const e = o.i + g;
                  e <= o.size() && o.show(e, g),
                    (u += o.visibleItems.length),
                    b();
                }),
              n &&
                n.addEventListener("click", (t) => {
                  t.preventDefault(), (p -= 1), (u -= o.visibleItems.length);
                  const e = o.i - g;
                  e > 0 && o.show(e, g), b();
                });
            const h = () => {
              s.classList.toggle("d-none"), a.classList.toggle("d-none");
            };
            a &&
              a.addEventListener("click", () => {
                o.show(1, c), (d = 1), (p = 1), (u = c), b(), h();
              }),
              s &&
                s.addEventListener("click", () => {
                  o.show(1, g),
                    (d = Math.ceil(c / g)),
                    (p = 1),
                    (u = o.visibleItems.length),
                    b(),
                    h();
                }),
              e.pagination &&
                t
                  .querySelector(".pagination")
                  .addEventListener("click", (t) => {
                    "page" === t.target.classList[0] &&
                      ((p = Number(t.target.innerText)), b());
                  });
          });
      }
    };

  const anchorJSInit = () => {
    new window.AnchorJS({ icon: "#" }).add("[data-anchor]");
  };

  const popoverInit = () => {
    Array.from(document.querySelectorAll('[data-bs-toggle="popover"]')).map(
      (o) => new bootstrap.Popover(o)
    );
  };

  const fromValidationInit = () => {
    document.querySelectorAll(".needs-validation").forEach((t) => {
      t.addEventListener(
        "submit",
        (a) => {
          a.preventDefault(),
            a.stopPropagation(),
            t.classList.add("was-validated");
        },
        !1
      );
    });
  };

  const docComponentInit = () => {
    const e = document.querySelectorAll("[data-component-card]"),
      o = document.getElementById("icon-copied-toast"),
      t = new bootstrap.Toast(o);
    e.forEach((e) => {
      const c = e.querySelector(".copy-code-btn"),
        n = e.querySelector(".code-to-copy"),
        d = e.querySelector(".preview-btn"),
        r = e.querySelector(".code-collapse"),
        l = bootstrap.Collapse.getOrCreateInstance(r, { toggle: !1 });
      d?.addEventListener("click", () => {
        l.toggle();
      }),
        c?.addEventListener("click", () => {
          const e = document.createElement("textarea");
          (e.value = n.innerHTML),
            document.body.appendChild(e),
            e.select(),
            document.execCommand("copy"),
            document.body.removeChild(e),
            (o.querySelector(".toast-body").innerHTML =
              "<code class='text-500'>Code has been copied to clipboard.</code>"),
            t.show();
        });
    });
  };

  const swiperInit = () => {
    const e = document.querySelectorAll(".swiper-theme-container");
    e &&
      e.forEach((e) => {
        const t = e.querySelector("[data-swiper]"),
          r = getData(t, "swiper"),
          i = r.thumb;
        let n;
        if (i) {
          const e = t.querySelectorAll("img");
          let r = "";
          e.forEach((e) => {
            r += `\n          <div class='swiper-slide '>\n            <img class='img-fluid rounded mt-1' src=${e.src} alt=''/>\n          </div>\n        `;
          });
          const s = document.createElement("div");
          if (
            (s.setAttribute("class", "swiper-container thumb"),
            (s.innerHTML = `<div class='swiper-wrapper'>${r}</div>`),
            i.parent)
          ) {
            document.querySelector(i.parent).parentNode.appendChild(s);
          } else t.parentNode.appendChild(s);
          n = new window.Swiper(s, i);
        }
        const s = e.querySelector(".swiper-nav");
        new window.Swiper(t, {
          ...r,
          navigation: {
            nextEl: s?.querySelector(".swiper-button-next"),
            prevEl: s?.querySelector(".swiper-button-prev"),
          },
          thumbs: { swiper: n },
        });
      });
  };

  const getThubmnailDirection = () =>
      window.innerWidth < 768 ||
      (window.innerWidth >= 992 && window.innerWidth < 1200)
        ? "horizontal"
        : "vertical",
    productDetailsInit = () => {
      const e = document.querySelector("[data-product-details]");
      if (e) {
        const t = e.querySelector("[data-product-color]"),
          i =
            (e.querySelector("[data-product-quantity]"),
            e.querySelector('[data-quantity] input[type="number"]')),
          r = e.querySelector("[data-product-color-variants]"),
          a = (t) => {
            const i = e.querySelector("[data-products-swiper]"),
              r = getData(i, "swiper"),
              a = getData(i, "thumb-target"),
              n = document.getElementById(a);
            let s = "";
            t.forEach((e) => {
              s += `\n          <div class='swiper-slide '>\n            <img class='w-100' src=${e} alt="">\n          </div>\n        `;
            }),
              (i.innerHTML = `<div class='swiper-wrapper'>${s}</div>`);
            let c = "";
            t.forEach((e) => {
              c += `\n          <div class='swiper-slide '>\n            <div class="product-thumb-container p-2 p-sm-3 p-xl-2">\n              <img src=${e} alt="">\n            </div>\n          </div>\n        `;
            }),
              (n.innerHTML = `<div class='swiper-wrapper'>${c}</div>`);
            const o = new window.Swiper(n, {
                slidesPerView: 5,
                spaceBetween: 16,
                direction: getThubmnailDirection(),
                breakpoints: {
                  768: { spaceBetween: 100 },
                  992: { spaceBetween: 16 },
                },
              }),
              d = i.querySelector(".swiper-nav");
            resize(() => {
              o.changeDirection(getThubmnailDirection());
            }),
              new Swiper(i, {
                ...r,
                navigation: {
                  nextEl: d?.querySelector(".swiper-button-next"),
                  prevEl: d?.querySelector(".swiper-button-prev"),
                },
                thumbs: { swiper: o },
              });
          },
          n = r.querySelectorAll("[data-variant]");
        n.forEach((e) => {
          e.classList.contains("active") &&
            (a(getData(e, "products-images")),
            (t.innerHTML = getData(e, "variant")));
          const i = getData(e, "products-images");
          e.addEventListener("click", () => {
            a(i),
              n.forEach((e) => {
                e.classList.remove("active");
              }),
              e.classList.add("active"),
              (t.innerHTML = getData(e, "variant"));
          });
        }),
          i.addEventListener("change", (e) => {
            "" == e.target.value && (e.target.value = 0);
          });
      }
    };

  const phoenixOffcanvasInit = () => {
    const e = document.querySelector("[data-phoenix-toggle='offcanvas']"),
      t = document.querySelector("[data-phoenix-backdrop]");
    if (e) {
      const o = getData(e, "phoenix-target"),
        a = document.querySelector(o),
        n = a.querySelector("[data-phoenix-dismiss='offcanvas']"),
        c = () => {
          a.classList.add("show"), (document.body.style.overflow = "hidden");
        },
        s = () => {
          a.classList.remove("show"),
            document.body.style.removeProperty("overflow");
        };
      e.addEventListener("click", () => {
        c();
      }),
        n.addEventListener("click", () => {
          s();
        }),
        t &&
          t.addEventListener("click", () => {
            s();
          });
    }
  };

  const ratingInit = () => {
    document.querySelectorAll("[data-rater]").forEach((t) => {
      const e = {
        reverse: getItemFromStore("isRTL"),
        starSize: 32,
        step: 0.5,
        element: t,
        rateCallback(t, e) {
          this.setRating(t), e();
        },
        ...getData(t, "rater"),
      };
      return window.raterJs(e);
    });
  };

  const quantityInit = () => {
    const t = "[data-quantity] [data-type]",
      e = "[data-quantity]",
      a = '[data-quantity] input[type="number"]',
      n = "click",
      u = "min",
      r = "type";
    document.querySelectorAll(t).forEach((t) => {
      t.addEventListener(n, (t) => {
        const n = t.currentTarget,
          i = getData(n, r),
          l = n.closest(e).querySelector(a),
          c = l.getAttribute(u);
        let o = parseInt(l.value, 10);
        "plus" === i ? (o += 1) : (o = o > c ? (o -= 1) : o), (l.value = o);
      });
    });
  };

  const { merge: merge$1 } = window._;
  window.Dropzone && (window.Dropzone.autoDiscover = !1);
  const dropzoneInit = () => {
    const e = "[data-dropzone]",
      r = ".dz-preview",
      o = ".dz-preview .dz-preview-cover",
      t = "dz-file-processing",
      i = "dz-file-complete",
      l = "dz-processing",
      n = "options",
      s = "addedfile",
      a = "removedfile",
      c = "complete",
      d = document.querySelectorAll(e);
    d.length &&
      d.forEach((e) => {
        let d = getData(e, n);
        d = d || {};
        const m = d.data ? d.data : {},
          u = merge$1(
            {
              url: "/assets/php/",
              addRemoveLinks: !1,
              previewsContainer: e.querySelector(r),
              previewTemplate: e.querySelector(r).innerHTML,
              thumbnailWidth: null,
              thumbnailHeight: null,
              maxFilesize: 2,
              autoProcessQueue: !1,
              filesizeBase: 1e3,
              init: function () {
                const r = this;
                m.length &&
                  m.forEach((e) => {
                    const o = { name: e.name, size: e.size };
                    r.options.addedfile.call(r, o),
                      r.options.thumbnail.call(r, o, `${e.url}/${e.name}`);
                  }),
                  r.on(s, function () {
                    "maxFiles" in d &&
                      (1 === d.maxFiles &&
                        e.querySelectorAll(o).length > 1 &&
                        e.querySelector(o).remove(),
                      1 === d.maxFiles &&
                        this.files.length > 1 &&
                        this.removeFile(this.files[0]));
                  });
              },
              error(e, r) {
                if (e.previewElement) {
                  e.previewElement.classList.add("dz-error"),
                    "string" != typeof r && r.error && (r = r.error);
                  for (let o of e.previewElement.querySelectorAll(
                    "[data-dz-errormessage]"
                  ))
                    o.textContent = r;
                }
              },
            },
            d
          );
        e.querySelector(r).innerHTML = "";
        const p = new window.Dropzone(e, u);
        p.on(s, () => {
          e.querySelector(o) && e.querySelector(o).classList.remove(i),
            e.classList.add(t);
        }),
          p.on(a, () => {
            e.querySelector(o) && e.querySelector(o).classList.remove(l),
              e.classList.add(i);
          }),
          p.on(c, () => {
            e.querySelector(o) && e.querySelector(o).classList.remove(l),
              e.classList.add(i);
          });
      });
  };

  const choicesInit = () => {
    const t = document.querySelectorAll("[data-choices]");
    t.length &&
      t.forEach((t) => {
        const e = getData(t, "options");
        return new window.Choices(t, {
          itemSelectText: "",
          addItems: !0,
          ...e,
        });
      });
  };

  const { merge: merge } = window._,
    tinymceInit = () => {
      const e = document.querySelectorAll("[data-tinymce]");
      window.tinymce &&
        e.forEach((e) => {
          const t = getData(e, "tinymce"),
            n = merge(
              {
                selector: ".tinymce",
                height: "50vh",
                skin: "oxide",
                menubar: !1,
                content_style: `\n        .mce-content-body { \n          color: ${getColor(
                  "black"
                )} \n        }\n        .mce-content-body[data-mce-placeholder]:not(.mce-visualblocks)::before {\n          color: ${getColor(
                  "gray-400"
                )};\n          font-weight: 400;\n          font-size: 12.8px;\n        }\n        `,
                mobile: { theme: "mobile", toolbar: ["undo", "bold"] },
                statusbar: !1,
                plugins: "link,image,lists,table,media",
                theme_advanced_toolbar_align: "center",
                toolbar: [
                  { name: "history", items: ["undo", "redo"] },
                  {
                    name: "formatting",
                    items: ["bold", "italic", "underline", "strikethrough"],
                  },
                  {
                    name: "alignment",
                    items: [
                      "alignleft",
                      "aligncenter",
                      "alignright",
                      "alignjustify",
                    ],
                  },
                  { name: "list", items: ["numlist", "bullist"] },
                  { name: "link", items: ["link"] },
                ],
              },
              t
            );
          window.tinymce.init(n);
        });
    };

  const responsiveNavItemsInit = () => {
    const e = "[data-nav-item]",
      t = "[data-navbar]",
      l = "[data-more-item]",
      o = "[data-category-list]",
      i = "[data-category-btn]",
      r = document.querySelector(t),
      s = () => {
        const t = r.clientWidth,
          o = r.querySelector(l),
          s = o.clientWidth,
          n = t - s,
          a = r.querySelectorAll(e),
          c = r.querySelector(i).clientWidth;
        let d = 0;
        (o.style.display = "none"),
          a.forEach((e) => {
            const t = e.clientWidth;
            if (
              ((d += t), d + c + s > n && !e.classList.contains("dropdown"))
            ) {
              (o.style.display = "block"), (e.style.display = "none");
              const t = e.firstChild.cloneNode(!0);
              r.querySelector(".category-list").appendChild(t);
            }
          });
        r.querySelectorAll(".dropdown-menu .nav-link").forEach((e) => {
          e.classList.remove("nav-link"), e.classList.add("dropdown-item");
        });
      };
    if (r) {
      window.addEventListener("load", () => {
        s();
      }),
        resize(() => {
          const t = r.querySelectorAll(e),
            l = r.querySelectorAll(o);
          t.forEach((e) => e.removeAttribute("style")),
            l.forEach((e) => (e.innerHTML = "")),
            s();
        });
      const t = r.querySelectorAll(".nav-link");
      r.addEventListener("click", function (e) {
        for (let e = 0; e < t.length; e++) t[e].classList.remove("active");
        e.target.closest("li") &&
          e.target.closest("li").classList.add("active");
      });
    }
  };

  const zeroRoadmapChartInit = () => {
    const t = document.querySelector(".gantt-zero-roadmap");
    if (t) {
      const a = t.querySelector(".gantt-zero-roadmap-chart");
      window.gantt.plugins({ tooltip: !0 }),
        (window.gantt.config.date_format = "%Y-%m-%d %H:%i"),
        (window.gantt.config.scale_height = 0),
        (window.gantt.config.row_height = 36),
        (window.gantt.config.bar_height = 12),
        (window.gantt.config.drag_move = !1),
        (window.gantt.config.drag_progress = !1),
        (window.gantt.config.drag_resize = !1),
        (window.gantt.config.drag_links = !1),
        (window.gantt.config.details_on_dblclick = !1),
        (window.gantt.config.click_drag = !1);
      var e = {
        levels: [
          {
            name: "month",
            scales: [
              { unit: "month", format: "%F, %Y" },
              { unit: "week", format: "Week #%W" },
            ],
          },
          { name: "year", scales: [{ unit: "year", step: 1, format: "%Y" }] },
          {
            name: "week",
            scales: [
              {
                unit: "week",
                step: 1,
                format: function (t) {
                  var e = gantt.date.date_to_str("%d %M"),
                    a = gantt.date.add(t, -6, "day");
                  return (
                    "#" +
                    gantt.date.date_to_str("%W")(t) +
                    ", " +
                    e(t) +
                    " - " +
                    e(a)
                  );
                },
              },
              { unit: "day", step: 1, format: "%j %D" },
            ],
          },
        ],
      };
      gantt.ext.zoom.init(e),
        gantt.ext.zoom.setLevel("week"),
        gantt.ext.zoom.attachEvent("onAfterZoom", function (t, e) {
          document.querySelector("input[value='" + e.name + "']").checked = !0;
        }),
        (gantt.config.columns = [{ name: "text", width: 56, resize: !0 }]),
        (gantt.templates.task_class = (t, e, a) => a.task_class),
        (gantt.templates.task_cell_class = function (t, e) {
          return "weekend";
        }),
        (gantt.templates.task_text = () => ""),
        window.gantt.init(a),
        window.gantt.parse({
          data: [
            {
              id: 1,
              text: "Planning",
              start_date: "2019-08-01 00:00",
              duration: 3,
              progress: 1,
              task_class: "planning",
            },
            {
              id: 2,
              text: "Research",
              start_date: "2019-08-02 00:00",
              duration: 5,
              progress: 0.5,
              task_class: "research",
            },
            {
              id: 3,
              text: "Design",
              start_date: "2019-08-02 00:00",
              duration: 10,
              progress: 0.4,
              task_class: "design",
            },
            {
              id: 4,
              text: "Review",
              start_date: "2019-08-05 00:00",
              duration: 5,
              progress: 0.8,
              task_class: "review",
            },
            {
              id: 5,
              text: "Develop",
              start_date: "2019-08-06 00:00",
              duration: 10,
              progress: 0.3,
              open: !0,
              task_class: "develop",
            },
            {
              id: 6,
              text: "Review II",
              start_date: "2019-08-10 00:00",
              duration: 4,
              progress: 0.02,
              task_class: "review-2",
            },
          ],
          links: [
            { id: 1, source: 1, target: 2, type: "0" },
            { id: 2, source: 1, target: 3, type: "0" },
            { id: 3, source: 3, target: 4, type: "0" },
            { id: 4, source: 6, target: 5, type: "3" },
          ],
        });
      const n = t.querySelectorAll("input[name=scaleView]"),
        o = t.querySelector("[data-gantt-progress]"),
        r = t.querySelector("[data-gantt-links]");
      n.forEach((t) => {
        t.addEventListener("click", (t) => {
          window.gantt.ext.zoom.setLevel(t.target.value);
        });
      }),
        r.addEventListener("change", (t) => {
          (window.gantt.config.show_links = t.target.checked),
            window.gantt.init(a);
        }),
        o.addEventListener("change", (t) => {
          (window.gantt.config.show_progress = t.target.checked),
            window.gantt.init(a);
        });
    }
  };

  var HOOKS = [
    "onChange",
    "onClose",
    "onDayCreate",
    "onDestroy",
    "onKeyDown",
    "onMonthChange",
    "onOpen",
    "onParseConfig",
    "onReady",
    "onValueUpdate",
    "onYearChange",
    "onPreCalendarPosition",
  ];
  var defaults = {
    _disable: [],
    allowInput: !1,
    allowInvalidPreload: !1,
    altFormat: "F j, Y",
    altInput: !1,
    altInputClass: "form-control input",
    animate:
      "object" == typeof window &&
      -1 === window.navigator.userAgent.indexOf("MSIE"),
    ariaDateFormat: "F j, Y",
    autoFillDefaultTime: !0,
    clickOpens: !0,
    closeOnSelect: !0,
    conjunction: ", ",
    dateFormat: "Y-m-d",
    defaultHour: 12,
    defaultMinute: 0,
    defaultSeconds: 0,
    disable: [],
    disableMobile: !1,
    enableSeconds: !1,
    enableTime: !1,
    errorHandler: function (e) {
      return "undefined" != typeof console && console.warn(e);
    },
    getWeek: function (e) {
      var n = new Date(e.getTime());
      n.setHours(0, 0, 0, 0),
        n.setDate(n.getDate() + 3 - ((n.getDay() + 6) % 7));
      var o = new Date(n.getFullYear(), 0, 4);
      return (
        1 +
        Math.round(
          ((n.getTime() - o.getTime()) / 864e5 - 3 + ((o.getDay() + 6) % 7)) / 7
        )
      );
    },
    hourIncrement: 1,
    ignoredFocusElements: [],
    inline: !1,
    locale: "default",
    minuteIncrement: 5,
    mode: "single",
    monthSelectorType: "dropdown",
    nextArrow:
      "<svg version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' viewBox='0 0 17 17'><g></g><path d='M13.207 8.472l-7.854 7.854-0.707-0.707 7.146-7.146-7.146-7.148 0.707-0.707 7.854 7.854z' /></svg>",
    noCalendar: !1,
    now: new Date(),
    onChange: [],
    onClose: [],
    onDayCreate: [],
    onDestroy: [],
    onKeyDown: [],
    onMonthChange: [],
    onOpen: [],
    onParseConfig: [],
    onReady: [],
    onValueUpdate: [],
    onYearChange: [],
    onPreCalendarPosition: [],
    plugins: [],
    position: "auto",
    positionElement: void 0,
    prevArrow:
      "<svg version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' viewBox='0 0 17 17'><g></g><path d='M5.207 8.471l7.146 7.147-0.707 0.707-7.853-7.854 7.854-7.853 0.707 0.707-7.147 7.146z' /></svg>",
    shorthandCurrentMonth: !1,
    showMonths: 1,
    static: !1,
    time_24hr: !1,
    weekNumbers: !1,
    wrap: !1,
  };

  var english = {
    weekdays: {
      shorthand: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
      longhand: [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday",
      ],
    },
    months: {
      shorthand: [
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sep",
        "Oct",
        "Nov",
        "Dec",
      ],
      longhand: [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December",
      ],
    },
    daysInMonth: [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
    firstDayOfWeek: 0,
    ordinal: function (e) {
      var r = e % 100;
      if (r > 3 && r < 21) return "th";
      switch (r % 10) {
        case 1:
          return "st";
        case 2:
          return "nd";
        case 3:
          return "rd";
        default:
          return "th";
      }
    },
    rangeSeparator: " to ",
    weekAbbreviation: "Wk",
    scrollTitle: "Scroll to increment",
    toggleTitle: "Click to toggle",
    amPM: ["AM", "PM"],
    yearAriaLabel: "Year",
    monthAriaLabel: "Month",
    hourAriaLabel: "Hour",
    minuteAriaLabel: "Minute",
    time_24hr: !1,
  };

  var pad = function (r, n) {
    return void 0 === n && (n = 2), ("000" + r).slice(-1 * n);
  };
  var int = function (r) {
    return !0 === r ? 1 : 0;
  };
  function debounce(r, n) {
    var t;
    return function () {
      var e = this,
        o = arguments;
      clearTimeout(t),
        (t = setTimeout(function () {
          return r.apply(e, o);
        }, n));
    };
  }
  var arrayify = function (r) {
    return r instanceof Array ? r : [r];
  };

  function toggleClass(e, t, n) {
    if (!0 === n) return e.classList.add(t);
    e.classList.remove(t);
  }
  function createElement(e, t, n) {
    var r = window.document.createElement(e);
    return (
      (t = t || ""),
      (n = n || ""),
      (r.className = t),
      void 0 !== n && (r.textContent = n),
      r
    );
  }
  function clearNode(e) {
    for (; e.firstChild; ) e.removeChild(e.firstChild);
  }
  function findParent(e, t) {
    return t(e) ? e : e.parentNode ? findParent(e.parentNode, t) : void 0;
  }
  function createNumberInput(e, t) {
    var n = createElement("div", "numInputWrapper"),
      r = createElement("input", "numInput " + e),
      a = createElement("span", "arrowUp"),
      o = createElement("span", "arrowDown");
    if (
      (-1 === navigator.userAgent.indexOf("MSIE 9.0")
        ? (r.type = "number")
        : ((r.type = "text"), (r.pattern = "\\d*")),
      void 0 !== t)
    )
      for (var i in t) r.setAttribute(i, t[i]);
    return n.appendChild(r), n.appendChild(a), n.appendChild(o), n;
  }
  function getEventTarget(e) {
    try {
      return "function" == typeof e.composedPath
        ? e.composedPath()[0]
        : e.target;
    } catch (t) {
      return e.target;
    }
  }

  var doNothing = function () {};
  var monthToStr = function (t, n, e) {
    return e.months[n ? "shorthand" : "longhand"][t];
  };
  var revFormat = {
    D: doNothing,
    F: function (t, n, e) {
      t.setMonth(e.months.longhand.indexOf(n));
    },
    G: function (t, n) {
      t.setHours((t.getHours() >= 12 ? 12 : 0) + parseFloat(n));
    },
    H: function (t, n) {
      t.setHours(parseFloat(n));
    },
    J: function (t, n) {
      t.setDate(parseFloat(n));
    },
    K: function (t, n, e) {
      t.setHours(
        (t.getHours() % 12) + 12 * int(new RegExp(e.amPM[1], "i").test(n))
      );
    },
    M: function (t, n, e) {
      t.setMonth(e.months.shorthand.indexOf(n));
    },
    S: function (t, n) {
      t.setSeconds(parseFloat(n));
    },
    U: function (t, n) {
      return new Date(1e3 * parseFloat(n));
    },
    W: function (t, n, e) {
      var o = parseInt(n),
        r = new Date(t.getFullYear(), 0, 2 + 7 * (o - 1), 0, 0, 0, 0);
      return r.setDate(r.getDate() - r.getDay() + e.firstDayOfWeek), r;
    },
    Y: function (t, n) {
      t.setFullYear(parseFloat(n));
    },
    Z: function (t, n) {
      return new Date(n);
    },
    d: function (t, n) {
      t.setDate(parseFloat(n));
    },
    h: function (t, n) {
      t.setHours((t.getHours() >= 12 ? 12 : 0) + parseFloat(n));
    },
    i: function (t, n) {
      t.setMinutes(parseFloat(n));
    },
    j: function (t, n) {
      t.setDate(parseFloat(n));
    },
    l: doNothing,
    m: function (t, n) {
      t.setMonth(parseFloat(n) - 1);
    },
    n: function (t, n) {
      t.setMonth(parseFloat(n) - 1);
    },
    s: function (t, n) {
      t.setSeconds(parseFloat(n));
    },
    u: function (t, n) {
      return new Date(parseFloat(n));
    },
    w: doNothing,
    y: function (t, n) {
      t.setFullYear(2e3 + parseFloat(n));
    },
  };
  var tokenRegex = {
    D: "",
    F: "",
    G: "(\\d\\d|\\d)",
    H: "(\\d\\d|\\d)",
    J: "(\\d\\d|\\d)\\w+",
    K: "",
    M: "",
    S: "(\\d\\d|\\d)",
    U: "(.+)",
    W: "(\\d\\d|\\d)",
    Y: "(\\d{4})",
    Z: "(.+)",
    d: "(\\d\\d|\\d)",
    h: "(\\d\\d|\\d)",
    i: "(\\d\\d|\\d)",
    j: "(\\d\\d|\\d)",
    l: "",
    m: "(\\d\\d|\\d)",
    n: "(\\d\\d|\\d)",
    s: "(\\d\\d|\\d)",
    u: "(.+)",
    w: "(\\d\\d|\\d)",
    y: "(\\d{2})",
  };
  var formats = {
    Z: function (t) {
      return t.toISOString();
    },
    D: function (t, n, e) {
      return n.weekdays.shorthand[formats.w(t, n, e)];
    },
    F: function (t, n, e) {
      return monthToStr(formats.n(t, n, e) - 1, !1, n);
    },
    G: function (t, n, e) {
      return pad(formats.h(t, n, e));
    },
    H: function (t) {
      return pad(t.getHours());
    },
    J: function (t, n) {
      return void 0 !== n.ordinal
        ? t.getDate() + n.ordinal(t.getDate())
        : t.getDate();
    },
    K: function (t, n) {
      return n.amPM[int(t.getHours() > 11)];
    },
    M: function (t, n) {
      return monthToStr(t.getMonth(), !0, n);
    },
    S: function (t) {
      return pad(t.getSeconds());
    },
    U: function (t) {
      return t.getTime() / 1e3;
    },
    W: function (t, n, e) {
      return e.getWeek(t);
    },
    Y: function (t) {
      return pad(t.getFullYear(), 4);
    },
    d: function (t) {
      return pad(t.getDate());
    },
    h: function (t) {
      return t.getHours() % 12 ? t.getHours() % 12 : 12;
    },
    i: function (t) {
      return pad(t.getMinutes());
    },
    j: function (t) {
      return t.getDate();
    },
    l: function (t, n) {
      return n.weekdays.longhand[t.getDay()];
    },
    m: function (t) {
      return pad(t.getMonth() + 1);
    },
    n: function (t) {
      return t.getMonth() + 1;
    },
    s: function (t) {
      return t.getSeconds();
    },
    u: function (t) {
      return t.getTime();
    },
    w: function (t) {
      return t.getDay();
    },
    y: function (t) {
      return String(t.getFullYear()).substring(2);
    },
  };

  var createDateFormatter = function (e) {
    var t = e.config,
      r = void 0 === t ? defaults : t,
      n = e.l10n,
      a = void 0 === n ? english : n,
      o = e.isMobile,
      i = void 0 !== o && o;
    return function (e, t, n) {
      var o = n || a;
      return void 0 === r.formatDate || i
        ? t
            .split("")
            .map(function (t, n, a) {
              return formats[t] && "\\" !== a[n - 1]
                ? formats[t](e, o, r)
                : "\\" !== t
                ? t
                : "";
            })
            .join("")
        : r.formatDate(e, t, o);
    };
  };
  var createDateParser = function (e) {
    var t = e.config,
      r = void 0 === t ? defaults : t,
      n = e.l10n,
      a = void 0 === n ? english : n;
    return function (e, t, n, o) {
      if (0 === e || e) {
        var i,
          s = o || a,
          u = e;
        if (e instanceof Date) i = new Date(e.getTime());
        else if ("string" != typeof e && void 0 !== e.toFixed) i = new Date(e);
        else if ("string" == typeof e) {
          var f = t || (r || defaults).dateFormat,
            m = String(e).trim();
          if ("today" === m) (i = new Date()), (n = !0);
          else if (r && r.parseDate) i = r.parseDate(e, f);
          else if (/Z$/.test(m) || /GMT$/.test(m)) i = new Date(e);
          else {
            for (
              var d = void 0, v = [], g = 0, c = 0, l = "";
              g < f.length;
              g++
            ) {
              var D = f[g],
                p = "\\" === D,
                x = "\\" === f[g - 1] || p;
              if (tokenRegex[D] && !x) {
                l += tokenRegex[D];
                var h = new RegExp(l).exec(e);
                h &&
                  (d = !0) &&
                  v["Y" !== D ? "push" : "unshift"]({
                    fn: revFormat[D],
                    val: h[++c],
                  });
              } else p || (l += ".");
            }
            (i =
              r && r.noCalendar
                ? new Date(new Date().setHours(0, 0, 0, 0))
                : new Date(new Date().getFullYear(), 0, 1, 0, 0, 0, 0)),
              v.forEach(function (e) {
                var t = e.fn,
                  r = e.val;
                return (i = t(i, r, s) || i);
              }),
              (i = d ? i : void 0);
          }
        }
        if (i instanceof Date && !isNaN(i.getTime()))
          return !0 === n && i.setHours(0, 0, 0, 0), i;
        r.errorHandler(new Error("Invalid date provided: " + u));
      }
    };
  };
  function compareDates(e, t, r) {
    return (
      void 0 === r && (r = !0),
      !1 !== r
        ? new Date(e.getTime()).setHours(0, 0, 0, 0) -
          new Date(t.getTime()).setHours(0, 0, 0, 0)
        : e.getTime() - t.getTime()
    );
  }
  var isBetween = function (e, t, r) {
    return e > Math.min(t, r) && e < Math.max(t, r);
  };
  var calculateSecondsSinceMidnight = function (e, t, r) {
    return 3600 * e + 60 * t + r;
  };
  var parseSeconds = function (e) {
    var t = Math.floor(e / 3600),
      r = (e - 3600 * t) / 60;
    return [t, r, e - 3600 * t - 60 * r];
  };
  var duration = { DAY: 864e5 };
  function getDefaultHours(e) {
    var t = e.defaultHour,
      r = e.defaultMinute,
      n = e.defaultSeconds;
    if (void 0 !== e.minDate) {
      var a = e.minDate.getHours(),
        o = e.minDate.getMinutes(),
        i = e.minDate.getSeconds();
      t < a && (t = a),
        t === a && r < o && (r = o),
        t === a && r === o && n < i && (n = e.minDate.getSeconds());
    }
    if (void 0 !== e.maxDate) {
      var s = e.maxDate.getHours(),
        u = e.maxDate.getMinutes();
      (t = Math.min(t, s)) === s && (r = Math.min(u, r)),
        t === s && r === u && (n = e.maxDate.getSeconds());
    }
    return { hours: t, minutes: r, seconds: n };
  }

  "function" != typeof Object.assign &&
    (Object.assign = function (n) {
      for (var t = [], r = 1; r < arguments.length; r++)
        t[r - 1] = arguments[r];
      if (!n) throw TypeError("Cannot convert undefined or null to object");
      for (
        var e = function (t) {
            t &&
              Object.keys(t).forEach(function (r) {
                return (n[r] = t[r]);
              });
          },
          o = 0,
          c = t;
        o < c.length;
        o++
      ) {
        var f = c[o];
        e(f);
      }
      return n;
    });

  var __assign =
      (undefined && undefined.__assign) ||
      function () {
        return (
          (__assign =
            Object.assign ||
            function (e) {
              for (var t, n = 1, a = arguments.length; n < a; n++)
                for (var i in (t = arguments[n]))
                  Object.prototype.hasOwnProperty.call(t, i) && (e[i] = t[i]);
              return e;
            }),
          __assign.apply(this, arguments)
        );
      },
    __spreadArrays =
      (undefined && undefined.__spreadArrays) ||
      function () {
        for (var e = 0, t = 0, n = arguments.length; t < n; t++)
          e += arguments[t].length;
        var a = Array(e),
          i = 0;
        for (t = 0; t < n; t++)
          for (var o = arguments[t], r = 0, l = o.length; r < l; r++, i++)
            a[i] = o[r];
        return a;
      };
  var DEBOUNCED_CHANGE_MS = 300;
  function FlatpickrInstance(e, t) {
    var n = {
      config: __assign(__assign({}, defaults), flatpickr.defaultConfig),
      l10n: english,
    };
    function a() {
      var e;
      return (
        (null === (e = n.calendarContainer) || void 0 === e
          ? void 0
          : e.getRootNode()
        ).activeElement || document.activeElement
      );
    }
    function i(e) {
      return e.bind(n);
    }
    function o() {
      var e = n.config;
      (!1 === e.weekNumbers && 1 === e.showMonths) ||
        (!0 !== e.noCalendar &&
          window.requestAnimationFrame(function () {
            if (
              (void 0 !== n.calendarContainer &&
                ((n.calendarContainer.style.visibility = "hidden"),
                (n.calendarContainer.style.display = "block")),
              void 0 !== n.daysContainer)
            ) {
              var t = (n.days.offsetWidth + 1) * e.showMonths;
              (n.daysContainer.style.width = t + "px"),
                (n.calendarContainer.style.width =
                  t +
                  (void 0 !== n.weekWrapper ? n.weekWrapper.offsetWidth : 0) +
                  "px"),
                n.calendarContainer.style.removeProperty("visibility"),
                n.calendarContainer.style.removeProperty("display");
            }
          }));
    }
    function r(e) {
      if (0 === n.selectedDates.length) {
        var t =
            void 0 === n.config.minDate ||
            compareDates(new Date(), n.config.minDate) >= 0
              ? new Date()
              : new Date(n.config.minDate.getTime()),
          a = getDefaultHours(n.config);
        t.setHours(a.hours, a.minutes, a.seconds, t.getMilliseconds()),
          (n.selectedDates = [t]),
          (n.latestSelectedDateObj = t);
      }
      void 0 !== e &&
        "blur" !== e.type &&
        (function (e) {
          e.preventDefault();
          var t = "keydown" === e.type,
            a = getEventTarget(e),
            i = a;
          void 0 !== n.amPM &&
            a === n.amPM &&
            (n.amPM.textContent =
              n.l10n.amPM[int(n.amPM.textContent === n.l10n.amPM[0])]);
          var o = parseFloat(i.getAttribute("min")),
            r = parseFloat(i.getAttribute("max")),
            l = parseFloat(i.getAttribute("step")),
            c = parseInt(i.value, 10),
            s = e.delta || (t ? (38 === e.which ? 1 : -1) : 0),
            d = c + l * s;
          if (void 0 !== i.value && 2 === i.value.length) {
            var f = i === n.hourElement,
              u = i === n.minuteElement;
            d < o
              ? ((d = r + d + int(!f) + (int(f) && int(!n.amPM))),
                u && p(void 0, -1, n.hourElement))
              : d > r &&
                ((d = i === n.hourElement ? d - r - int(!n.amPM) : o),
                u && p(void 0, 1, n.hourElement)),
              n.amPM &&
                f &&
                (1 === l ? d + c === 23 : Math.abs(d - c) > l) &&
                (n.amPM.textContent =
                  n.l10n.amPM[int(n.amPM.textContent === n.l10n.amPM[0])]),
              (i.value = pad(d));
          }
        })(e);
      var i = n._input.value;
      l(), Z(), n._input.value !== i && n._debouncedChange();
    }
    function l() {
      if (void 0 !== n.hourElement && void 0 !== n.minuteElement) {
        var e,
          t,
          a = (parseInt(n.hourElement.value.slice(-2), 10) || 0) % 24,
          i = (parseInt(n.minuteElement.value, 10) || 0) % 60,
          o =
            void 0 !== n.secondElement
              ? (parseInt(n.secondElement.value, 10) || 0) % 60
              : 0;
        void 0 !== n.amPM &&
          ((e = a),
          (t = n.amPM.textContent),
          (a = (e % 12) + 12 * int(t === n.l10n.amPM[1])));
        var r =
            void 0 !== n.config.minTime ||
            (n.config.minDate &&
              n.minDateHasTime &&
              n.latestSelectedDateObj &&
              0 ===
                compareDates(n.latestSelectedDateObj, n.config.minDate, !0)),
          l =
            void 0 !== n.config.maxTime ||
            (n.config.maxDate &&
              n.maxDateHasTime &&
              n.latestSelectedDateObj &&
              0 ===
                compareDates(n.latestSelectedDateObj, n.config.maxDate, !0));
        if (
          void 0 !== n.config.maxTime &&
          void 0 !== n.config.minTime &&
          n.config.minTime > n.config.maxTime
        ) {
          var c = calculateSecondsSinceMidnight(
              n.config.minTime.getHours(),
              n.config.minTime.getMinutes(),
              n.config.minTime.getSeconds()
            ),
            d = calculateSecondsSinceMidnight(
              n.config.maxTime.getHours(),
              n.config.maxTime.getMinutes(),
              n.config.maxTime.getSeconds()
            ),
            f = calculateSecondsSinceMidnight(a, i, o);
          if (f > d && f < c) {
            var u = parseSeconds(c);
            (a = u[0]), (i = u[1]), (o = u[2]);
          }
        } else {
          if (l) {
            var m =
              void 0 !== n.config.maxTime ? n.config.maxTime : n.config.maxDate;
            (a = Math.min(a, m.getHours())) === m.getHours() &&
              (i = Math.min(i, m.getMinutes())),
              i === m.getMinutes() && (o = Math.min(o, m.getSeconds()));
          }
          if (r) {
            var g =
              void 0 !== n.config.minTime ? n.config.minTime : n.config.minDate;
            (a = Math.max(a, g.getHours())) === g.getHours() &&
              i < g.getMinutes() &&
              (i = g.getMinutes()),
              i === g.getMinutes() && (o = Math.max(o, g.getSeconds()));
          }
        }
        s(a, i, o);
      }
    }
    function c(e) {
      var t = e || n.latestSelectedDateObj;
      t && t instanceof Date && s(t.getHours(), t.getMinutes(), t.getSeconds());
    }
    function s(e, t, a) {
      void 0 !== n.latestSelectedDateObj &&
        n.latestSelectedDateObj.setHours(e % 24, t, a || 0, 0),
        n.hourElement &&
          n.minuteElement &&
          !n.isMobile &&
          ((n.hourElement.value = pad(
            n.config.time_24hr ? e : ((12 + e) % 12) + 12 * int(e % 12 == 0)
          )),
          (n.minuteElement.value = pad(t)),
          void 0 !== n.amPM && (n.amPM.textContent = n.l10n.amPM[int(e >= 12)]),
          void 0 !== n.secondElement && (n.secondElement.value = pad(a)));
    }
    function d(e) {
      var t = getEventTarget(e),
        n = parseInt(t.value) + (e.delta || 0);
      (n / 1e3 > 1 || ("Enter" === e.key && !/[^\d]/.test(n.toString()))) &&
        O(n);
    }
    function f(e, t, a, i) {
      return t instanceof Array
        ? t.forEach(function (t) {
            return f(e, t, a, i);
          })
        : e instanceof Array
        ? e.forEach(function (e) {
            return f(e, t, a, i);
          })
        : (e.addEventListener(t, a, i),
          void n._handlers.push({
            remove: function () {
              return e.removeEventListener(t, a, i);
            },
          }));
    }
    function u() {
      Q("onChange");
    }
    function m(e, t) {
      var a =
          void 0 !== e
            ? n.parseDate(e)
            : n.latestSelectedDateObj ||
              (n.config.minDate && n.config.minDate > n.now
                ? n.config.minDate
                : n.config.maxDate && n.config.maxDate < n.now
                ? n.config.maxDate
                : n.now),
        i = n.currentYear,
        o = n.currentMonth;
      try {
        void 0 !== a &&
          ((n.currentYear = a.getFullYear()), (n.currentMonth = a.getMonth()));
      } catch (e) {
        (e.message = "Invalid date supplied: " + a), n.config.errorHandler(e);
      }
      t && n.currentYear !== i && (Q("onYearChange"), y()),
        !t ||
          (n.currentYear === i && n.currentMonth === o) ||
          Q("onMonthChange"),
        n.redraw();
    }
    function g(e) {
      var t = getEventTarget(e);
      ~t.className.indexOf("arrow") &&
        p(e, t.classList.contains("arrowUp") ? 1 : -1);
    }
    function p(e, t, n) {
      var a = e && getEventTarget(e),
        i = n || (a && a.parentNode && a.parentNode.firstChild),
        o = V("increment");
      (o.delta = t), i && i.dispatchEvent(o);
    }
    function h(e, t, a, i) {
      var o = S(t, !0),
        r = createElement("span", e, t.getDate().toString());
      return (
        (r.dateObj = t),
        (r.$i = i),
        r.setAttribute("aria-label", n.formatDate(t, n.config.ariaDateFormat)),
        -1 === e.indexOf("hidden") &&
          0 === compareDates(t, n.now) &&
          ((n.todayDateElem = r),
          r.classList.add("today"),
          r.setAttribute("aria-current", "date")),
        o
          ? ((r.tabIndex = -1),
            X(t) &&
              (r.classList.add("selected"),
              (n.selectedDateElem = r),
              "range" === n.config.mode &&
                (toggleClass(
                  r,
                  "startRange",
                  n.selectedDates[0] &&
                    0 === compareDates(t, n.selectedDates[0], !0)
                ),
                toggleClass(
                  r,
                  "endRange",
                  n.selectedDates[1] &&
                    0 === compareDates(t, n.selectedDates[1], !0)
                ),
                "nextMonthDay" === e && r.classList.add("inRange"))))
          : r.classList.add("flatpickr-disabled"),
        "range" === n.config.mode &&
          (function (e) {
            return (
              !("range" !== n.config.mode || n.selectedDates.length < 2) &&
              compareDates(e, n.selectedDates[0]) >= 0 &&
              compareDates(e, n.selectedDates[1]) <= 0
            );
          })(t) &&
          !X(t) &&
          r.classList.add("inRange"),
        n.weekNumbers &&
          1 === n.config.showMonths &&
          "prevMonthDay" !== e &&
          i % 7 == 6 &&
          n.weekNumbers.insertAdjacentHTML(
            "beforeend",
            "<span class='flatpickr-day'>" + n.config.getWeek(t) + "</span>"
          ),
        Q("onDayCreate", r),
        r
      );
    }
    function v(e) {
      e.focus(), "range" === n.config.mode && Y(e);
    }
    function D(e) {
      for (
        var t = e > 0 ? 0 : n.config.showMonths - 1,
          a = e > 0 ? n.config.showMonths : -1,
          i = t;
        i != a;
        i += e
      )
        for (
          var o = n.daysContainer.children[i],
            r = e > 0 ? 0 : o.children.length - 1,
            l = e > 0 ? o.children.length : -1,
            c = r;
          c != l;
          c += e
        ) {
          var s = o.children[c];
          if (-1 === s.className.indexOf("hidden") && S(s.dateObj)) return s;
        }
    }
    function C(e, t) {
      var i = a(),
        o = N(i || document.body),
        r =
          void 0 !== e
            ? e
            : o
            ? i
            : void 0 !== n.selectedDateElem && N(n.selectedDateElem)
            ? n.selectedDateElem
            : void 0 !== n.todayDateElem && N(n.todayDateElem)
            ? n.todayDateElem
            : D(t > 0 ? 1 : -1);
      void 0 === r
        ? n._input.focus()
        : o
        ? (function (e, t) {
            for (
              var a =
                  -1 === e.className.indexOf("Month")
                    ? e.dateObj.getMonth()
                    : n.currentMonth,
                i = t > 0 ? n.config.showMonths : -1,
                o = t > 0 ? 1 : -1,
                r = a - n.currentMonth;
              r != i;
              r += o
            )
              for (
                var l = n.daysContainer.children[r],
                  c =
                    a - n.currentMonth === r
                      ? e.$i + t
                      : t < 0
                      ? l.children.length - 1
                      : 0,
                  s = l.children.length,
                  d = c;
                d >= 0 && d < s && d != (t > 0 ? s : -1);
                d += o
              ) {
                var f = l.children[d];
                if (
                  -1 === f.className.indexOf("hidden") &&
                  S(f.dateObj) &&
                  Math.abs(e.$i - d) >= Math.abs(t)
                )
                  return v(f);
              }
            n.changeMonth(o), C(D(o), 0);
          })(r, t)
        : v(r);
    }
    function b(e, t) {
      for (
        var a = (new Date(e, t, 1).getDay() - n.l10n.firstDayOfWeek + 7) % 7,
          i = n.utils.getDaysInMonth((t - 1 + 12) % 12, e),
          o = n.utils.getDaysInMonth(t, e),
          r = window.document.createDocumentFragment(),
          l = n.config.showMonths > 1,
          c = l ? "prevMonthDay hidden" : "prevMonthDay",
          s = l ? "nextMonthDay hidden" : "nextMonthDay",
          d = i + 1 - a,
          f = 0;
        d <= i;
        d++, f++
      )
        r.appendChild(h("flatpickr-day " + c, new Date(e, t - 1, d), 0, f));
      for (d = 1; d <= o; d++, f++)
        r.appendChild(h("flatpickr-day", new Date(e, t, d), 0, f));
      for (
        var u = o + 1;
        u <= 42 - a && (1 === n.config.showMonths || f % 7 != 0);
        u++, f++
      )
        r.appendChild(h("flatpickr-day " + s, new Date(e, t + 1, u % o), 0, f));
      var m = createElement("div", "dayContainer");
      return m.appendChild(r), m;
    }
    function M() {
      if (void 0 !== n.daysContainer) {
        clearNode(n.daysContainer), n.weekNumbers && clearNode(n.weekNumbers);
        for (
          var e = document.createDocumentFragment(), t = 0;
          t < n.config.showMonths;
          t++
        ) {
          var a = new Date(n.currentYear, n.currentMonth, 1);
          a.setMonth(n.currentMonth + t),
            e.appendChild(b(a.getFullYear(), a.getMonth()));
        }
        n.daysContainer.appendChild(e),
          (n.days = n.daysContainer.firstChild),
          "range" === n.config.mode && 1 === n.selectedDates.length && Y();
      }
    }
    function y() {
      if (
        !(n.config.showMonths > 1 || "dropdown" !== n.config.monthSelectorType)
      ) {
        var e = function (e) {
          return (
            !(
              void 0 !== n.config.minDate &&
              n.currentYear === n.config.minDate.getFullYear() &&
              e < n.config.minDate.getMonth()
            ) &&
            !(
              void 0 !== n.config.maxDate &&
              n.currentYear === n.config.maxDate.getFullYear() &&
              e > n.config.maxDate.getMonth()
            )
          );
        };
        (n.monthsDropdownContainer.tabIndex = -1),
          (n.monthsDropdownContainer.innerHTML = "");
        for (var t = 0; t < 12; t++)
          if (e(t)) {
            var a = createElement("option", "flatpickr-monthDropdown-month");
            (a.value = new Date(n.currentYear, t).getMonth().toString()),
              (a.textContent = monthToStr(
                t,
                n.config.shorthandCurrentMonth,
                n.l10n
              )),
              (a.tabIndex = -1),
              n.currentMonth === t && (a.selected = !0),
              n.monthsDropdownContainer.appendChild(a);
          }
      }
    }
    function w() {
      var e,
        t = createElement("div", "flatpickr-month"),
        a = window.document.createDocumentFragment();
      n.config.showMonths > 1 || "static" === n.config.monthSelectorType
        ? (e = createElement("span", "cur-month"))
        : ((n.monthsDropdownContainer = createElement(
            "select",
            "flatpickr-monthDropdown-months"
          )),
          n.monthsDropdownContainer.setAttribute(
            "aria-label",
            n.l10n.monthAriaLabel
          ),
          f(n.monthsDropdownContainer, "change", function (e) {
            var t = getEventTarget(e),
              a = parseInt(t.value, 10);
            n.changeMonth(a - n.currentMonth), Q("onMonthChange");
          }),
          y(),
          (e = n.monthsDropdownContainer));
      var i = createNumberInput("cur-year", { tabindex: "-1" }),
        o = i.getElementsByTagName("input")[0];
      o.setAttribute("aria-label", n.l10n.yearAriaLabel),
        n.config.minDate &&
          o.setAttribute("min", n.config.minDate.getFullYear().toString()),
        n.config.maxDate &&
          (o.setAttribute("max", n.config.maxDate.getFullYear().toString()),
          (o.disabled =
            !!n.config.minDate &&
            n.config.minDate.getFullYear() === n.config.maxDate.getFullYear()));
      var r = createElement("div", "flatpickr-current-month");
      return (
        r.appendChild(e),
        r.appendChild(i),
        a.appendChild(r),
        t.appendChild(a),
        { container: t, yearElement: o, monthElement: e }
      );
    }
    function E() {
      clearNode(n.monthNav),
        n.monthNav.appendChild(n.prevMonthNav),
        n.config.showMonths && ((n.yearElements = []), (n.monthElements = []));
      for (var e = n.config.showMonths; e--; ) {
        var t = w();
        n.yearElements.push(t.yearElement),
          n.monthElements.push(t.monthElement),
          n.monthNav.appendChild(t.container);
      }
      n.monthNav.appendChild(n.nextMonthNav);
    }
    function k() {
      n.weekdayContainer
        ? clearNode(n.weekdayContainer)
        : (n.weekdayContainer = createElement("div", "flatpickr-weekdays"));
      for (var e = n.config.showMonths; e--; ) {
        var t = createElement("div", "flatpickr-weekdaycontainer");
        n.weekdayContainer.appendChild(t);
      }
      return _(), n.weekdayContainer;
    }
    function _() {
      if (n.weekdayContainer) {
        var e = n.l10n.firstDayOfWeek,
          t = __spreadArrays(n.l10n.weekdays.shorthand);
        e > 0 &&
          e < t.length &&
          (t = __spreadArrays(t.splice(e, t.length), t.splice(0, e)));
        for (var a = n.config.showMonths; a--; )
          n.weekdayContainer.children[a].innerHTML =
            "\n      <span class='flatpickr-weekday'>\n        " +
            t.join("</span><span class='flatpickr-weekday'>") +
            "\n      </span>\n      ";
      }
    }
    function x(e, t) {
      void 0 === t && (t = !0);
      var a = t ? e : e - n.currentMonth;
      (a < 0 && !0 === n._hidePrevMonthArrow) ||
        (a > 0 && !0 === n._hideNextMonthArrow) ||
        ((n.currentMonth += a),
        (n.currentMonth < 0 || n.currentMonth > 11) &&
          ((n.currentYear += n.currentMonth > 11 ? 1 : -1),
          (n.currentMonth = (n.currentMonth + 12) % 12),
          Q("onYearChange"),
          y()),
        M(),
        Q("onMonthChange"),
        z());
    }
    function T(e) {
      return n.calendarContainer.contains(e);
    }
    function I(e) {
      if (n.isOpen && !n.config.inline) {
        var t = getEventTarget(e),
          a = T(t),
          i =
            !(
              t === n.input ||
              t === n.altInput ||
              n.element.contains(t) ||
              (e.path &&
                e.path.indexOf &&
                (~e.path.indexOf(n.input) || ~e.path.indexOf(n.altInput)))
            ) &&
            !a &&
            !T(e.relatedTarget),
          o = !n.config.ignoredFocusElements.some(function (e) {
            return e.contains(t);
          });
        i &&
          o &&
          (n.config.allowInput &&
            n.setDate(
              n._input.value,
              !1,
              n.config.altInput ? n.config.altFormat : n.config.dateFormat
            ),
          void 0 !== n.timeContainer &&
            void 0 !== n.minuteElement &&
            void 0 !== n.hourElement &&
            "" !== n.input.value &&
            void 0 !== n.input.value &&
            r(),
          n.close(),
          n.config &&
            "range" === n.config.mode &&
            1 === n.selectedDates.length &&
            n.clear(!1));
      }
    }
    function O(e) {
      if (
        !(
          !e ||
          (n.config.minDate && e < n.config.minDate.getFullYear()) ||
          (n.config.maxDate && e > n.config.maxDate.getFullYear())
        )
      ) {
        var t = e,
          a = n.currentYear !== t;
        (n.currentYear = t || n.currentYear),
          n.config.maxDate && n.currentYear === n.config.maxDate.getFullYear()
            ? (n.currentMonth = Math.min(
                n.config.maxDate.getMonth(),
                n.currentMonth
              ))
            : n.config.minDate &&
              n.currentYear === n.config.minDate.getFullYear() &&
              (n.currentMonth = Math.max(
                n.config.minDate.getMonth(),
                n.currentMonth
              )),
          a && (n.redraw(), Q("onYearChange"), y());
      }
    }
    function S(e, t) {
      var a;
      void 0 === t && (t = !0);
      var i = n.parseDate(e, void 0, t);
      if (
        (n.config.minDate &&
          i &&
          compareDates(
            i,
            n.config.minDate,
            void 0 !== t ? t : !n.minDateHasTime
          ) < 0) ||
        (n.config.maxDate &&
          i &&
          compareDates(
            i,
            n.config.maxDate,
            void 0 !== t ? t : !n.maxDateHasTime
          ) > 0)
      )
        return !1;
      if (!n.config.enable && 0 === n.config.disable.length) return !0;
      if (void 0 === i) return !1;
      for (
        var o = !!n.config.enable,
          r =
            null !== (a = n.config.enable) && void 0 !== a
              ? a
              : n.config.disable,
          l = 0,
          c = void 0;
        l < r.length;
        l++
      ) {
        if ("function" == typeof (c = r[l]) && c(i)) return o;
        if (c instanceof Date && void 0 !== i && c.getTime() === i.getTime())
          return o;
        if ("string" == typeof c) {
          var s = n.parseDate(c, void 0, !0);
          return s && s.getTime() === i.getTime() ? o : !o;
        }
        if (
          "object" == typeof c &&
          void 0 !== i &&
          c.from &&
          c.to &&
          i.getTime() >= c.from.getTime() &&
          i.getTime() <= c.to.getTime()
        )
          return o;
      }
      return !o;
    }
    function N(e) {
      return (
        void 0 !== n.daysContainer &&
        -1 === e.className.indexOf("hidden") &&
        -1 === e.className.indexOf("flatpickr-disabled") &&
        n.daysContainer.contains(e)
      );
    }
    function A(e) {
      var t = e.target === n._input,
        a = n._input.value.trimEnd() !== G();
      !t ||
        !a ||
        (e.relatedTarget && T(e.relatedTarget)) ||
        n.setDate(
          n._input.value,
          !0,
          e.target === n.altInput ? n.config.altFormat : n.config.dateFormat
        );
    }
    function P(t) {
      var i = getEventTarget(t),
        o = n.config.wrap ? e.contains(i) : i === n._input,
        c = n.config.allowInput,
        s = n.isOpen && (!c || !o),
        d = n.config.inline && o && !c;
      if (13 === t.keyCode && o) {
        if (c)
          return (
            n.setDate(
              n._input.value,
              !0,
              i === n.altInput ? n.config.altFormat : n.config.dateFormat
            ),
            n.close(),
            i.blur()
          );
        n.open();
      } else if (T(i) || s || d) {
        var f = !!n.timeContainer && n.timeContainer.contains(i);
        switch (t.keyCode) {
          case 13:
            f ? (t.preventDefault(), r(), W()) : K(t);
            break;
          case 27:
            t.preventDefault(), W();
            break;
          case 8:
          case 46:
            o && !n.config.allowInput && (t.preventDefault(), n.clear());
            break;
          case 37:
          case 39:
            if (f || o) n.hourElement && n.hourElement.focus();
            else {
              t.preventDefault();
              var u = a();
              if (void 0 !== n.daysContainer && (!1 === c || (u && N(u)))) {
                var m = 39 === t.keyCode ? 1 : -1;
                t.ctrlKey
                  ? (t.stopPropagation(), x(m), C(D(1), 0))
                  : C(void 0, m);
              }
            }
            break;
          case 38:
          case 40:
            t.preventDefault();
            var g = 40 === t.keyCode ? 1 : -1;
            (n.daysContainer && void 0 !== i.$i) ||
            i === n.input ||
            i === n.altInput
              ? t.ctrlKey
                ? (t.stopPropagation(), O(n.currentYear - g), C(D(1), 0))
                : f || C(void 0, 7 * g)
              : i === n.currentYearElement
              ? O(n.currentYear - g)
              : n.config.enableTime &&
                (!f && n.hourElement && n.hourElement.focus(),
                r(t),
                n._debouncedChange());
            break;
          case 9:
            if (f) {
              var p = [n.hourElement, n.minuteElement, n.secondElement, n.amPM]
                  .concat(n.pluginElements)
                  .filter(function (e) {
                    return e;
                  }),
                h = p.indexOf(i);
              if (-1 !== h) {
                var v = p[h + (t.shiftKey ? -1 : 1)];
                t.preventDefault(), (v || n._input).focus();
              }
            } else
              !n.config.noCalendar &&
                n.daysContainer &&
                n.daysContainer.contains(i) &&
                t.shiftKey &&
                (t.preventDefault(), n._input.focus());
        }
      }
      if (void 0 !== n.amPM && i === n.amPM)
        switch (t.key) {
          case n.l10n.amPM[0].charAt(0):
          case n.l10n.amPM[0].charAt(0).toLowerCase():
            (n.amPM.textContent = n.l10n.amPM[0]), l(), Z();
            break;
          case n.l10n.amPM[1].charAt(0):
          case n.l10n.amPM[1].charAt(0).toLowerCase():
            (n.amPM.textContent = n.l10n.amPM[1]), l(), Z();
        }
      (o || T(i)) && Q("onKeyDown", t);
    }
    function Y(e, t) {
      if (
        (void 0 === t && (t = "flatpickr-day"),
        1 === n.selectedDates.length &&
          (!e ||
            (e.classList.contains(t) &&
              !e.classList.contains("flatpickr-disabled"))))
      ) {
        for (
          var a = e
              ? e.dateObj.getTime()
              : n.days.firstElementChild.dateObj.getTime(),
            i = n.parseDate(n.selectedDates[0], void 0, !0).getTime(),
            o = Math.min(a, n.selectedDates[0].getTime()),
            r = Math.max(a, n.selectedDates[0].getTime()),
            l = !1,
            c = 0,
            s = 0,
            d = o;
          d < r;
          d += duration.DAY
        )
          S(new Date(d), !0) ||
            ((l = l || (d > o && d < r)),
            d < i && (!c || d > c)
              ? (c = d)
              : d > i && (!s || d < s) && (s = d));
        Array.from(
          n.rContainer.querySelectorAll(
            "*:nth-child(-n+" + n.config.showMonths + ") > ." + t
          )
        ).forEach(function (t) {
          var o = t.dateObj.getTime(),
            r = (c > 0 && o < c) || (s > 0 && o > s);
          if (r)
            return (
              t.classList.add("notAllowed"),
              void ["inRange", "startRange", "endRange"].forEach(function (e) {
                t.classList.remove(e);
              })
            );
          (l && !r) ||
            (["startRange", "inRange", "endRange", "notAllowed"].forEach(
              function (e) {
                t.classList.remove(e);
              }
            ),
            void 0 !== e &&
              (e.classList.add(
                a <= n.selectedDates[0].getTime() ? "startRange" : "endRange"
              ),
              i < a && o === i
                ? t.classList.add("startRange")
                : i > a && o === i && t.classList.add("endRange"),
              o >= c &&
                (0 === s || o <= s) &&
                isBetween(o, i, a) &&
                t.classList.add("inRange")));
        });
      }
    }
    function F() {
      !n.isOpen || n.config.static || n.config.inline || R();
    }
    function j(e) {
      return function (t) {
        var a = (n.config["_" + e + "Date"] = n.parseDate(
            t,
            n.config.dateFormat
          )),
          i = n.config["_" + ("min" === e ? "max" : "min") + "Date"];
        void 0 !== a &&
          (n["min" === e ? "minDateHasTime" : "maxDateHasTime"] =
            a.getHours() > 0 || a.getMinutes() > 0 || a.getSeconds() > 0),
          n.selectedDates &&
            ((n.selectedDates = n.selectedDates.filter(function (e) {
              return S(e);
            })),
            n.selectedDates.length || "min" !== e || c(a),
            Z()),
          n.daysContainer &&
            (B(),
            void 0 !== a
              ? (n.currentYearElement[e] = a.getFullYear().toString())
              : n.currentYearElement.removeAttribute(e),
            (n.currentYearElement.disabled =
              !!i && void 0 !== a && i.getFullYear() === a.getFullYear()));
      };
    }
    function H() {
      return n.config.wrap ? e.querySelector("[data-input]") : e;
    }
    function L() {
      "object" != typeof n.config.locale &&
        void 0 === flatpickr.l10ns[n.config.locale] &&
        n.config.errorHandler(
          new Error("flatpickr: invalid locale " + n.config.locale)
        ),
        (n.l10n = __assign(
          __assign({}, flatpickr.l10ns.default),
          "object" == typeof n.config.locale
            ? n.config.locale
            : "default" !== n.config.locale
            ? flatpickr.l10ns[n.config.locale]
            : void 0
        )),
        (tokenRegex.D = "(" + n.l10n.weekdays.shorthand.join("|") + ")"),
        (tokenRegex.l = "(" + n.l10n.weekdays.longhand.join("|") + ")"),
        (tokenRegex.M = "(" + n.l10n.months.shorthand.join("|") + ")"),
        (tokenRegex.F = "(" + n.l10n.months.longhand.join("|") + ")"),
        (tokenRegex.K =
          "(" +
          n.l10n.amPM[0] +
          "|" +
          n.l10n.amPM[1] +
          "|" +
          n.l10n.amPM[0].toLowerCase() +
          "|" +
          n.l10n.amPM[1].toLowerCase() +
          ")"),
        void 0 ===
          __assign(__assign({}, t), JSON.parse(JSON.stringify(e.dataset || {})))
            .time_24hr &&
          void 0 === flatpickr.defaultConfig.time_24hr &&
          (n.config.time_24hr = n.l10n.time_24hr),
        (n.formatDate = createDateFormatter(n)),
        (n.parseDate = createDateParser({ config: n.config, l10n: n.l10n }));
    }
    function R(e) {
      if ("function" != typeof n.config.position) {
        if (void 0 !== n.calendarContainer) {
          Q("onPreCalendarPosition");
          var t = e || n._positionElement,
            a = Array.prototype.reduce.call(
              n.calendarContainer.children,
              function (e, t) {
                return e + t.offsetHeight;
              },
              0
            ),
            i = n.calendarContainer.offsetWidth,
            o = n.config.position.split(" "),
            r = o[0],
            l = o.length > 1 ? o[1] : null,
            c = t.getBoundingClientRect(),
            s = window.innerHeight - c.bottom,
            d = "above" === r || ("below" !== r && s < a && c.top > a),
            f = window.pageYOffset + c.top + (d ? -a - 2 : t.offsetHeight + 2);
          if (
            (toggleClass(n.calendarContainer, "arrowTop", !d),
            toggleClass(n.calendarContainer, "arrowBottom", d),
            !n.config.inline)
          ) {
            var u = window.pageXOffset + c.left,
              m = !1,
              g = !1;
            "center" === l
              ? ((u -= (i - c.width) / 2), (m = !0))
              : "right" === l && ((u -= i - c.width), (g = !0)),
              toggleClass(n.calendarContainer, "arrowLeft", !m && !g),
              toggleClass(n.calendarContainer, "arrowCenter", m),
              toggleClass(n.calendarContainer, "arrowRight", g);
            var p =
                window.document.body.offsetWidth -
                (window.pageXOffset + c.right),
              h = u + i > window.document.body.offsetWidth,
              v = p + i > window.document.body.offsetWidth;
            if (
              (toggleClass(n.calendarContainer, "rightMost", h),
              !n.config.static)
            )
              if (((n.calendarContainer.style.top = f + "px"), h))
                if (v) {
                  var D = (function () {
                    for (
                      var e = null, t = 0;
                      t < document.styleSheets.length;
                      t++
                    ) {
                      var n = document.styleSheets[t];
                      if (n.cssRules) {
                        try {
                          n.cssRules;
                        } catch (e) {
                          continue;
                        }
                        e = n;
                        break;
                      }
                    }
                    return null != e
                      ? e
                      : ((a = document.createElement("style")),
                        document.head.appendChild(a),
                        a.sheet);
                    var a;
                  })();
                  if (void 0 === D) return;
                  var C = window.document.body.offsetWidth,
                    b = Math.max(0, C / 2 - i / 2),
                    M = D.cssRules.length,
                    y = "{left:" + c.left + "px;right:auto;}";
                  toggleClass(n.calendarContainer, "rightMost", !1),
                    toggleClass(n.calendarContainer, "centerMost", !0),
                    D.insertRule(
                      ".flatpickr-calendar.centerMost:before,.flatpickr-calendar.centerMost:after" +
                        y,
                      M
                    ),
                    (n.calendarContainer.style.left = b + "px"),
                    (n.calendarContainer.style.right = "auto");
                } else
                  (n.calendarContainer.style.left = "auto"),
                    (n.calendarContainer.style.right = p + "px");
              else
                (n.calendarContainer.style.left = u + "px"),
                  (n.calendarContainer.style.right = "auto");
          }
        }
      } else n.config.position(n, e);
    }
    function B() {
      n.config.noCalendar || n.isMobile || (y(), z(), M());
    }
    function W() {
      n._input.focus(),
        -1 !== window.navigator.userAgent.indexOf("MSIE") ||
        void 0 !== navigator.msMaxTouchPoints
          ? setTimeout(n.close, 0)
          : n.close();
    }
    function K(e) {
      e.preventDefault(), e.stopPropagation();
      var t = findParent(getEventTarget(e), function (e) {
        return (
          e.classList &&
          e.classList.contains("flatpickr-day") &&
          !e.classList.contains("flatpickr-disabled") &&
          !e.classList.contains("notAllowed")
        );
      });
      if (void 0 !== t) {
        var a = t,
          i = (n.latestSelectedDateObj = new Date(a.dateObj.getTime())),
          o =
            (i.getMonth() < n.currentMonth ||
              i.getMonth() > n.currentMonth + n.config.showMonths - 1) &&
            "range" !== n.config.mode;
        if (((n.selectedDateElem = a), "single" === n.config.mode))
          n.selectedDates = [i];
        else if ("multiple" === n.config.mode) {
          var r = X(i);
          r ? n.selectedDates.splice(parseInt(r), 1) : n.selectedDates.push(i);
        } else
          "range" === n.config.mode &&
            (2 === n.selectedDates.length && n.clear(!1, !1),
            (n.latestSelectedDateObj = i),
            n.selectedDates.push(i),
            0 !== compareDates(i, n.selectedDates[0], !0) &&
              n.selectedDates.sort(function (e, t) {
                return e.getTime() - t.getTime();
              }));
        if ((l(), o)) {
          var c = n.currentYear !== i.getFullYear();
          (n.currentYear = i.getFullYear()),
            (n.currentMonth = i.getMonth()),
            c && (Q("onYearChange"), y()),
            Q("onMonthChange");
        }
        if (
          (z(),
          M(),
          Z(),
          o || "range" === n.config.mode || 1 !== n.config.showMonths
            ? void 0 !== n.selectedDateElem &&
              void 0 === n.hourElement &&
              n.selectedDateElem &&
              n.selectedDateElem.focus()
            : v(a),
          void 0 !== n.hourElement &&
            void 0 !== n.hourElement &&
            n.hourElement.focus(),
          n.config.closeOnSelect)
        ) {
          var s = "single" === n.config.mode && !n.config.enableTime,
            d =
              "range" === n.config.mode &&
              2 === n.selectedDates.length &&
              !n.config.enableTime;
          (s || d) && W();
        }
        u();
      }
    }
    (n.parseDate = createDateParser({ config: n.config, l10n: n.l10n })),
      (n._handlers = []),
      (n.pluginElements = []),
      (n.loadedPlugins = []),
      (n._bind = f),
      (n._setHoursFromDate = c),
      (n._positionCalendar = R),
      (n.changeMonth = x),
      (n.changeYear = O),
      (n.clear = function (e, t) {
        void 0 === e && (e = !0);
        void 0 === t && (t = !0);
        (n.input.value = ""), void 0 !== n.altInput && (n.altInput.value = "");
        void 0 !== n.mobileInput && (n.mobileInput.value = "");
        (n.selectedDates = []),
          (n.latestSelectedDateObj = void 0),
          !0 === t &&
            ((n.currentYear = n._initialDate.getFullYear()),
            (n.currentMonth = n._initialDate.getMonth()));
        if (!0 === n.config.enableTime) {
          var a = getDefaultHours(n.config),
            i = a.hours,
            o = a.minutes,
            r = a.seconds;
          s(i, o, r);
        }
        n.redraw(), e && Q("onChange");
      }),
      (n.close = function () {
        (n.isOpen = !1),
          n.isMobile ||
            (void 0 !== n.calendarContainer &&
              n.calendarContainer.classList.remove("open"),
            void 0 !== n._input && n._input.classList.remove("active"));
        Q("onClose");
      }),
      (n.onMouseOver = Y),
      (n._createElement = createElement),
      (n.createDay = h),
      (n.destroy = function () {
        void 0 !== n.config && Q("onDestroy");
        for (var e = n._handlers.length; e--; ) n._handlers[e].remove();
        if (((n._handlers = []), n.mobileInput))
          n.mobileInput.parentNode &&
            n.mobileInput.parentNode.removeChild(n.mobileInput),
            (n.mobileInput = void 0);
        else if (n.calendarContainer && n.calendarContainer.parentNode)
          if (n.config.static && n.calendarContainer.parentNode) {
            var t = n.calendarContainer.parentNode;
            if ((t.lastChild && t.removeChild(t.lastChild), t.parentNode)) {
              for (; t.firstChild; ) t.parentNode.insertBefore(t.firstChild, t);
              t.parentNode.removeChild(t);
            }
          } else
            n.calendarContainer.parentNode.removeChild(n.calendarContainer);
        n.altInput &&
          ((n.input.type = "text"),
          n.altInput.parentNode &&
            n.altInput.parentNode.removeChild(n.altInput),
          delete n.altInput);
        n.input &&
          ((n.input.type = n.input._type),
          n.input.classList.remove("flatpickr-input"),
          n.input.removeAttribute("readonly"));
        [
          "_showTimeInput",
          "latestSelectedDateObj",
          "_hideNextMonthArrow",
          "_hidePrevMonthArrow",
          "__hideNextMonthArrow",
          "__hidePrevMonthArrow",
          "isMobile",
          "isOpen",
          "selectedDateElem",
          "minDateHasTime",
          "maxDateHasTime",
          "days",
          "daysContainer",
          "_input",
          "_positionElement",
          "innerContainer",
          "rContainer",
          "monthNav",
          "todayDateElem",
          "calendarContainer",
          "weekdayContainer",
          "prevMonthNav",
          "nextMonthNav",
          "monthsDropdownContainer",
          "currentMonthElement",
          "currentYearElement",
          "navigationCurrentMonth",
          "selectedDateElem",
          "config",
        ].forEach(function (e) {
          try {
            delete n[e];
          } catch (e) {}
        });
      }),
      (n.isEnabled = S),
      (n.jumpToDate = m),
      (n.updateValue = Z),
      (n.open = function (e, t) {
        void 0 === t && (t = n._positionElement);
        if (!0 === n.isMobile) {
          if (e) {
            e.preventDefault();
            var a = getEventTarget(e);
            a && a.blur();
          }
          return (
            void 0 !== n.mobileInput &&
              (n.mobileInput.focus(), n.mobileInput.click()),
            void Q("onOpen")
          );
        }
        if (n._input.disabled || n.config.inline) return;
        var i = n.isOpen;
        (n.isOpen = !0),
          i ||
            (n.calendarContainer.classList.add("open"),
            n._input.classList.add("active"),
            Q("onOpen"),
            R(t));
        !0 === n.config.enableTime &&
          !0 === n.config.noCalendar &&
          (!1 !== n.config.allowInput ||
            (void 0 !== e && n.timeContainer.contains(e.relatedTarget)) ||
            setTimeout(function () {
              return n.hourElement.select();
            }, 50));
      }),
      (n.redraw = B),
      (n.set = function (e, t) {
        if (null !== e && "object" == typeof e)
          for (var a in (Object.assign(n.config, e), e))
            void 0 !== q[a] &&
              q[a].forEach(function (e) {
                return e();
              });
        else
          (n.config[e] = t),
            void 0 !== q[e]
              ? q[e].forEach(function (e) {
                  return e();
                })
              : HOOKS.indexOf(e) > -1 && (n.config[e] = arrayify(t));
        n.redraw(), Z(!0);
      }),
      (n.setDate = function (e, t, a) {
        void 0 === t && (t = !1);
        void 0 === a && (a = n.config.dateFormat);
        if ((0 !== e && !e) || (e instanceof Array && 0 === e.length))
          return n.clear(t);
        U(e, a),
          (n.latestSelectedDateObj =
            n.selectedDates[n.selectedDates.length - 1]),
          n.redraw(),
          m(void 0, t),
          c(),
          0 === n.selectedDates.length && n.clear(!1);
        Z(t), t && Q("onChange");
      }),
      (n.toggle = function (e) {
        if (!0 === n.isOpen) return n.close();
        n.open(e);
      });
    var q = {
      locale: [L, _],
      showMonths: [E, o, k],
      minDate: [m],
      maxDate: [m],
      positionElement: [$],
      clickOpens: [
        function () {
          !0 === n.config.clickOpens
            ? (f(n._input, "focus", n.open), f(n._input, "click", n.open))
            : (n._input.removeEventListener("focus", n.open),
              n._input.removeEventListener("click", n.open));
        },
      ],
    };
    function U(e, t) {
      var a = [];
      if (e instanceof Array)
        a = e.map(function (e) {
          return n.parseDate(e, t);
        });
      else if (e instanceof Date || "number" == typeof e)
        a = [n.parseDate(e, t)];
      else if ("string" == typeof e)
        switch (n.config.mode) {
          case "single":
          case "time":
            a = [n.parseDate(e, t)];
            break;
          case "multiple":
            a = e.split(n.config.conjunction).map(function (e) {
              return n.parseDate(e, t);
            });
            break;
          case "range":
            a = e.split(n.l10n.rangeSeparator).map(function (e) {
              return n.parseDate(e, t);
            });
        }
      else
        n.config.errorHandler(
          new Error("Invalid date supplied: " + JSON.stringify(e))
        );
      (n.selectedDates = n.config.allowInvalidPreload
        ? a
        : a.filter(function (e) {
            return e instanceof Date && S(e, !1);
          })),
        "range" === n.config.mode &&
          n.selectedDates.sort(function (e, t) {
            return e.getTime() - t.getTime();
          });
    }
    function J(e) {
      return e
        .slice()
        .map(function (e) {
          return "string" == typeof e ||
            "number" == typeof e ||
            e instanceof Date
            ? n.parseDate(e, void 0, !0)
            : e && "object" == typeof e && e.from && e.to
            ? {
                from: n.parseDate(e.from, void 0),
                to: n.parseDate(e.to, void 0),
              }
            : e;
        })
        .filter(function (e) {
          return e;
        });
    }
    function $() {
      n._positionElement = n.config.positionElement || n._input;
    }
    function Q(e, t) {
      if (void 0 !== n.config) {
        var a = n.config[e];
        if (void 0 !== a && a.length > 0)
          for (var i = 0; a[i] && i < a.length; i++)
            a[i](n.selectedDates, n.input.value, n, t);
        "onChange" === e &&
          (n.input.dispatchEvent(V("change")),
          n.input.dispatchEvent(V("input")));
      }
    }
    function V(e) {
      var t = document.createEvent("Event");
      return t.initEvent(e, !0, !0), t;
    }
    function X(e) {
      for (var t = 0; t < n.selectedDates.length; t++) {
        var a = n.selectedDates[t];
        if (a instanceof Date && 0 === compareDates(a, e)) return "" + t;
      }
      return !1;
    }
    function z() {
      n.config.noCalendar ||
        n.isMobile ||
        !n.monthNav ||
        (n.yearElements.forEach(function (e, t) {
          var a = new Date(n.currentYear, n.currentMonth, 1);
          a.setMonth(n.currentMonth + t),
            n.config.showMonths > 1 || "static" === n.config.monthSelectorType
              ? (n.monthElements[t].textContent =
                  monthToStr(
                    a.getMonth(),
                    n.config.shorthandCurrentMonth,
                    n.l10n
                  ) + " ")
              : (n.monthsDropdownContainer.value = a.getMonth().toString()),
            (e.value = a.getFullYear().toString());
        }),
        (n._hidePrevMonthArrow =
          void 0 !== n.config.minDate &&
          (n.currentYear === n.config.minDate.getFullYear()
            ? n.currentMonth <= n.config.minDate.getMonth()
            : n.currentYear < n.config.minDate.getFullYear())),
        (n._hideNextMonthArrow =
          void 0 !== n.config.maxDate &&
          (n.currentYear === n.config.maxDate.getFullYear()
            ? n.currentMonth + 1 > n.config.maxDate.getMonth()
            : n.currentYear > n.config.maxDate.getFullYear())));
    }
    function G(e) {
      var t =
        e || (n.config.altInput ? n.config.altFormat : n.config.dateFormat);
      return n.selectedDates
        .map(function (e) {
          return n.formatDate(e, t);
        })
        .filter(function (e, t, a) {
          return (
            "range" !== n.config.mode ||
            n.config.enableTime ||
            a.indexOf(e) === t
          );
        })
        .join(
          "range" !== n.config.mode
            ? n.config.conjunction
            : n.l10n.rangeSeparator
        );
    }
    function Z(e) {
      void 0 === e && (e = !0),
        void 0 !== n.mobileInput &&
          n.mobileFormatStr &&
          (n.mobileInput.value =
            void 0 !== n.latestSelectedDateObj
              ? n.formatDate(n.latestSelectedDateObj, n.mobileFormatStr)
              : ""),
        (n.input.value = G(n.config.dateFormat)),
        void 0 !== n.altInput && (n.altInput.value = G(n.config.altFormat)),
        !1 !== e && Q("onValueUpdate");
    }
    function ee(e) {
      var t = getEventTarget(e),
        a = n.prevMonthNav.contains(t),
        i = n.nextMonthNav.contains(t);
      a || i
        ? x(a ? -1 : 1)
        : n.yearElements.indexOf(t) >= 0
        ? t.select()
        : t.classList.contains("arrowUp")
        ? n.changeYear(n.currentYear + 1)
        : t.classList.contains("arrowDown") && n.changeYear(n.currentYear - 1);
    }
    return (
      (function () {
        (n.element = n.input = e),
          (n.isOpen = !1),
          (function () {
            var a = [
                "wrap",
                "weekNumbers",
                "allowInput",
                "allowInvalidPreload",
                "clickOpens",
                "time_24hr",
                "enableTime",
                "noCalendar",
                "altInput",
                "shorthandCurrentMonth",
                "inline",
                "static",
                "enableSeconds",
                "disableMobile",
              ],
              o = __assign(
                __assign({}, JSON.parse(JSON.stringify(e.dataset || {}))),
                t
              ),
              r = {};
            (n.config.parseDate = o.parseDate),
              (n.config.formatDate = o.formatDate),
              Object.defineProperty(n.config, "enable", {
                get: function () {
                  return n.config._enable;
                },
                set: function (e) {
                  n.config._enable = J(e);
                },
              }),
              Object.defineProperty(n.config, "disable", {
                get: function () {
                  return n.config._disable;
                },
                set: function (e) {
                  n.config._disable = J(e);
                },
              });
            var l = "time" === o.mode;
            if (!o.dateFormat && (o.enableTime || l)) {
              var c = flatpickr.defaultConfig.dateFormat || defaults.dateFormat;
              r.dateFormat =
                o.noCalendar || l
                  ? "H:i" + (o.enableSeconds ? ":S" : "")
                  : c + " H:i" + (o.enableSeconds ? ":S" : "");
            }
            if (o.altInput && (o.enableTime || l) && !o.altFormat) {
              var s = flatpickr.defaultConfig.altFormat || defaults.altFormat;
              r.altFormat =
                o.noCalendar || l
                  ? "h:i" + (o.enableSeconds ? ":S K" : " K")
                  : s + " h:i" + (o.enableSeconds ? ":S" : "") + " K";
            }
            Object.defineProperty(n.config, "minDate", {
              get: function () {
                return n.config._minDate;
              },
              set: j("min"),
            }),
              Object.defineProperty(n.config, "maxDate", {
                get: function () {
                  return n.config._maxDate;
                },
                set: j("max"),
              });
            var d = function (e) {
              return function (t) {
                n.config["min" === e ? "_minTime" : "_maxTime"] = n.parseDate(
                  t,
                  "H:i:S"
                );
              };
            };
            Object.defineProperty(n.config, "minTime", {
              get: function () {
                return n.config._minTime;
              },
              set: d("min"),
            }),
              Object.defineProperty(n.config, "maxTime", {
                get: function () {
                  return n.config._maxTime;
                },
                set: d("max"),
              }),
              "time" === o.mode &&
                ((n.config.noCalendar = !0), (n.config.enableTime = !0));
            Object.assign(n.config, r, o);
            for (var f = 0; f < a.length; f++)
              n.config[a[f]] =
                !0 === n.config[a[f]] || "true" === n.config[a[f]];
            HOOKS.filter(function (e) {
              return void 0 !== n.config[e];
            }).forEach(function (e) {
              n.config[e] = arrayify(n.config[e] || []).map(i);
            }),
              (n.isMobile =
                !n.config.disableMobile &&
                !n.config.inline &&
                "single" === n.config.mode &&
                !n.config.disable.length &&
                !n.config.enable &&
                !n.config.weekNumbers &&
                /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(
                  navigator.userAgent
                ));
            for (f = 0; f < n.config.plugins.length; f++) {
              var u = n.config.plugins[f](n) || {};
              for (var m in u)
                HOOKS.indexOf(m) > -1
                  ? (n.config[m] = arrayify(u[m]).map(i).concat(n.config[m]))
                  : void 0 === o[m] && (n.config[m] = u[m]);
            }
            o.altInputClass ||
              (n.config.altInputClass =
                H().className + " " + n.config.altInputClass);
            Q("onParseConfig");
          })(),
          L(),
          (function () {
            if (((n.input = H()), !n.input))
              return void n.config.errorHandler(
                new Error("Invalid input element specified")
              );
            (n.input._type = n.input.type),
              (n.input.type = "text"),
              n.input.classList.add("flatpickr-input"),
              (n._input = n.input),
              n.config.altInput &&
                ((n.altInput = createElement(
                  n.input.nodeName,
                  n.config.altInputClass
                )),
                (n._input = n.altInput),
                (n.altInput.placeholder = n.input.placeholder),
                (n.altInput.disabled = n.input.disabled),
                (n.altInput.required = n.input.required),
                (n.altInput.tabIndex = n.input.tabIndex),
                (n.altInput.type = "text"),
                n.input.setAttribute("type", "hidden"),
                !n.config.static &&
                  n.input.parentNode &&
                  n.input.parentNode.insertBefore(
                    n.altInput,
                    n.input.nextSibling
                  ));
            n.config.allowInput ||
              n._input.setAttribute("readonly", "readonly");
            $();
          })(),
          (function () {
            (n.selectedDates = []),
              (n.now = n.parseDate(n.config.now) || new Date());
            var e =
              n.config.defaultDate ||
              (("INPUT" !== n.input.nodeName &&
                "TEXTAREA" !== n.input.nodeName) ||
              !n.input.placeholder ||
              n.input.value !== n.input.placeholder
                ? n.input.value
                : null);
            e && U(e, n.config.dateFormat);
            (n._initialDate =
              n.selectedDates.length > 0
                ? n.selectedDates[0]
                : n.config.minDate &&
                  n.config.minDate.getTime() > n.now.getTime()
                ? n.config.minDate
                : n.config.maxDate &&
                  n.config.maxDate.getTime() < n.now.getTime()
                ? n.config.maxDate
                : n.now),
              (n.currentYear = n._initialDate.getFullYear()),
              (n.currentMonth = n._initialDate.getMonth()),
              n.selectedDates.length > 0 &&
                (n.latestSelectedDateObj = n.selectedDates[0]);
            void 0 !== n.config.minTime &&
              (n.config.minTime = n.parseDate(n.config.minTime, "H:i"));
            void 0 !== n.config.maxTime &&
              (n.config.maxTime = n.parseDate(n.config.maxTime, "H:i"));
            (n.minDateHasTime =
              !!n.config.minDate &&
              (n.config.minDate.getHours() > 0 ||
                n.config.minDate.getMinutes() > 0 ||
                n.config.minDate.getSeconds() > 0)),
              (n.maxDateHasTime =
                !!n.config.maxDate &&
                (n.config.maxDate.getHours() > 0 ||
                  n.config.maxDate.getMinutes() > 0 ||
                  n.config.maxDate.getSeconds() > 0));
          })(),
          (n.utils = {
            getDaysInMonth: function (e, t) {
              return (
                void 0 === e && (e = n.currentMonth),
                void 0 === t && (t = n.currentYear),
                1 === e && ((t % 4 == 0 && t % 100 != 0) || t % 400 == 0)
                  ? 29
                  : n.l10n.daysInMonth[e]
              );
            },
          }),
          n.isMobile ||
            (function () {
              var e = window.document.createDocumentFragment();
              if (
                ((n.calendarContainer = createElement(
                  "div",
                  "flatpickr-calendar"
                )),
                (n.calendarContainer.tabIndex = -1),
                !n.config.noCalendar)
              ) {
                if (
                  (e.appendChild(
                    ((n.monthNav = createElement("div", "flatpickr-months")),
                    (n.yearElements = []),
                    (n.monthElements = []),
                    (n.prevMonthNav = createElement(
                      "span",
                      "flatpickr-prev-month"
                    )),
                    (n.prevMonthNav.innerHTML = n.config.prevArrow),
                    (n.nextMonthNav = createElement(
                      "span",
                      "flatpickr-next-month"
                    )),
                    (n.nextMonthNav.innerHTML = n.config.nextArrow),
                    E(),
                    Object.defineProperty(n, "_hidePrevMonthArrow", {
                      get: function () {
                        return n.__hidePrevMonthArrow;
                      },
                      set: function (e) {
                        n.__hidePrevMonthArrow !== e &&
                          (toggleClass(n.prevMonthNav, "flatpickr-disabled", e),
                          (n.__hidePrevMonthArrow = e));
                      },
                    }),
                    Object.defineProperty(n, "_hideNextMonthArrow", {
                      get: function () {
                        return n.__hideNextMonthArrow;
                      },
                      set: function (e) {
                        n.__hideNextMonthArrow !== e &&
                          (toggleClass(n.nextMonthNav, "flatpickr-disabled", e),
                          (n.__hideNextMonthArrow = e));
                      },
                    }),
                    (n.currentYearElement = n.yearElements[0]),
                    z(),
                    n.monthNav)
                  ),
                  (n.innerContainer = createElement(
                    "div",
                    "flatpickr-innerContainer"
                  )),
                  n.config.weekNumbers)
                ) {
                  var t = (function () {
                      n.calendarContainer.classList.add("hasWeeks");
                      var e = createElement("div", "flatpickr-weekwrapper");
                      e.appendChild(
                        createElement(
                          "span",
                          "flatpickr-weekday",
                          n.l10n.weekAbbreviation
                        )
                      );
                      var t = createElement("div", "flatpickr-weeks");
                      return (
                        e.appendChild(t), { weekWrapper: e, weekNumbers: t }
                      );
                    })(),
                    a = t.weekWrapper,
                    i = t.weekNumbers;
                  n.innerContainer.appendChild(a),
                    (n.weekNumbers = i),
                    (n.weekWrapper = a);
                }
                (n.rContainer = createElement("div", "flatpickr-rContainer")),
                  n.rContainer.appendChild(k()),
                  n.daysContainer ||
                    ((n.daysContainer = createElement("div", "flatpickr-days")),
                    (n.daysContainer.tabIndex = -1)),
                  M(),
                  n.rContainer.appendChild(n.daysContainer),
                  n.innerContainer.appendChild(n.rContainer),
                  e.appendChild(n.innerContainer);
              }
              n.config.enableTime &&
                e.appendChild(
                  (function () {
                    n.calendarContainer.classList.add("hasTime"),
                      n.config.noCalendar &&
                        n.calendarContainer.classList.add("noCalendar");
                    var e = getDefaultHours(n.config);
                    (n.timeContainer = createElement("div", "flatpickr-time")),
                      (n.timeContainer.tabIndex = -1);
                    var t = createElement(
                        "span",
                        "flatpickr-time-separator",
                        ":"
                      ),
                      a = createNumberInput("flatpickr-hour", {
                        "aria-label": n.l10n.hourAriaLabel,
                      });
                    n.hourElement = a.getElementsByTagName("input")[0];
                    var i = createNumberInput("flatpickr-minute", {
                      "aria-label": n.l10n.minuteAriaLabel,
                    });
                    (n.minuteElement = i.getElementsByTagName("input")[0]),
                      (n.hourElement.tabIndex = n.minuteElement.tabIndex = -1),
                      (n.hourElement.value = pad(
                        n.latestSelectedDateObj
                          ? n.latestSelectedDateObj.getHours()
                          : n.config.time_24hr
                          ? e.hours
                          : (function (e) {
                              switch (e % 24) {
                                case 0:
                                case 12:
                                  return 12;
                                default:
                                  return e % 12;
                              }
                            })(e.hours)
                      )),
                      (n.minuteElement.value = pad(
                        n.latestSelectedDateObj
                          ? n.latestSelectedDateObj.getMinutes()
                          : e.minutes
                      )),
                      n.hourElement.setAttribute(
                        "step",
                        n.config.hourIncrement.toString()
                      ),
                      n.minuteElement.setAttribute(
                        "step",
                        n.config.minuteIncrement.toString()
                      ),
                      n.hourElement.setAttribute(
                        "min",
                        n.config.time_24hr ? "0" : "1"
                      ),
                      n.hourElement.setAttribute(
                        "max",
                        n.config.time_24hr ? "23" : "12"
                      ),
                      n.hourElement.setAttribute("maxlength", "2"),
                      n.minuteElement.setAttribute("min", "0"),
                      n.minuteElement.setAttribute("max", "59"),
                      n.minuteElement.setAttribute("maxlength", "2"),
                      n.timeContainer.appendChild(a),
                      n.timeContainer.appendChild(t),
                      n.timeContainer.appendChild(i),
                      n.config.time_24hr &&
                        n.timeContainer.classList.add("time24hr");
                    if (n.config.enableSeconds) {
                      n.timeContainer.classList.add("hasSeconds");
                      var o = createNumberInput("flatpickr-second");
                      (n.secondElement = o.getElementsByTagName("input")[0]),
                        (n.secondElement.value = pad(
                          n.latestSelectedDateObj
                            ? n.latestSelectedDateObj.getSeconds()
                            : e.seconds
                        )),
                        n.secondElement.setAttribute(
                          "step",
                          n.minuteElement.getAttribute("step")
                        ),
                        n.secondElement.setAttribute("min", "0"),
                        n.secondElement.setAttribute("max", "59"),
                        n.secondElement.setAttribute("maxlength", "2"),
                        n.timeContainer.appendChild(
                          createElement("span", "flatpickr-time-separator", ":")
                        ),
                        n.timeContainer.appendChild(o);
                    }
                    n.config.time_24hr ||
                      ((n.amPM = createElement(
                        "span",
                        "flatpickr-am-pm",
                        n.l10n.amPM[
                          int(
                            (n.latestSelectedDateObj
                              ? n.hourElement.value
                              : n.config.defaultHour) > 11
                          )
                        ]
                      )),
                      (n.amPM.title = n.l10n.toggleTitle),
                      (n.amPM.tabIndex = -1),
                      n.timeContainer.appendChild(n.amPM));
                    return n.timeContainer;
                  })()
                );
              toggleClass(
                n.calendarContainer,
                "rangeMode",
                "range" === n.config.mode
              ),
                toggleClass(
                  n.calendarContainer,
                  "animate",
                  !0 === n.config.animate
                ),
                toggleClass(
                  n.calendarContainer,
                  "multiMonth",
                  n.config.showMonths > 1
                ),
                n.calendarContainer.appendChild(e);
              var o =
                void 0 !== n.config.appendTo &&
                void 0 !== n.config.appendTo.nodeType;
              if (
                (n.config.inline || n.config.static) &&
                (n.calendarContainer.classList.add(
                  n.config.inline ? "inline" : "static"
                ),
                n.config.inline &&
                  (!o && n.element.parentNode
                    ? n.element.parentNode.insertBefore(
                        n.calendarContainer,
                        n._input.nextSibling
                      )
                    : void 0 !== n.config.appendTo &&
                      n.config.appendTo.appendChild(n.calendarContainer)),
                n.config.static)
              ) {
                var r = createElement("div", "flatpickr-wrapper");
                n.element.parentNode &&
                  n.element.parentNode.insertBefore(r, n.element),
                  r.appendChild(n.element),
                  n.altInput && r.appendChild(n.altInput),
                  r.appendChild(n.calendarContainer);
              }
              n.config.static ||
                n.config.inline ||
                (void 0 !== n.config.appendTo
                  ? n.config.appendTo
                  : window.document.body
                ).appendChild(n.calendarContainer);
            })(),
          (function () {
            n.config.wrap &&
              ["open", "close", "toggle", "clear"].forEach(function (e) {
                Array.prototype.forEach.call(
                  n.element.querySelectorAll("[data-" + e + "]"),
                  function (t) {
                    return f(t, "click", n[e]);
                  }
                );
              });
            if (n.isMobile)
              return void (function () {
                var e = n.config.enableTime
                  ? n.config.noCalendar
                    ? "time"
                    : "datetime-local"
                  : "date";
                (n.mobileInput = createElement(
                  "input",
                  n.input.className + " flatpickr-mobile"
                )),
                  (n.mobileInput.tabIndex = 1),
                  (n.mobileInput.type = e),
                  (n.mobileInput.disabled = n.input.disabled),
                  (n.mobileInput.required = n.input.required),
                  (n.mobileInput.placeholder = n.input.placeholder),
                  (n.mobileFormatStr =
                    "datetime-local" === e
                      ? "Y-m-d\\TH:i:S"
                      : "date" === e
                      ? "Y-m-d"
                      : "H:i:S"),
                  n.selectedDates.length > 0 &&
                    (n.mobileInput.defaultValue = n.mobileInput.value =
                      n.formatDate(n.selectedDates[0], n.mobileFormatStr));
                n.config.minDate &&
                  (n.mobileInput.min = n.formatDate(n.config.minDate, "Y-m-d"));
                n.config.maxDate &&
                  (n.mobileInput.max = n.formatDate(n.config.maxDate, "Y-m-d"));
                n.input.getAttribute("step") &&
                  (n.mobileInput.step = String(n.input.getAttribute("step")));
                (n.input.type = "hidden"),
                  void 0 !== n.altInput && (n.altInput.type = "hidden");
                try {
                  n.input.parentNode &&
                    n.input.parentNode.insertBefore(
                      n.mobileInput,
                      n.input.nextSibling
                    );
                } catch (e) {}
                f(n.mobileInput, "change", function (e) {
                  n.setDate(getEventTarget(e).value, !1, n.mobileFormatStr),
                    Q("onChange"),
                    Q("onClose");
                });
              })();
            var e = debounce(F, 50);
            (n._debouncedChange = debounce(u, DEBOUNCED_CHANGE_MS)),
              n.daysContainer &&
                !/iPhone|iPad|iPod/i.test(navigator.userAgent) &&
                f(n.daysContainer, "mouseover", function (e) {
                  "range" === n.config.mode && Y(getEventTarget(e));
                });
            f(n._input, "keydown", P),
              void 0 !== n.calendarContainer &&
                f(n.calendarContainer, "keydown", P);
            n.config.inline || n.config.static || f(window, "resize", e);
            void 0 !== window.ontouchstart
              ? f(window.document, "touchstart", I)
              : f(window.document, "mousedown", I);
            f(window.document, "focus", I, { capture: !0 }),
              !0 === n.config.clickOpens &&
                (f(n._input, "focus", n.open), f(n._input, "click", n.open));
            void 0 !== n.daysContainer &&
              (f(n.monthNav, "click", ee),
              f(n.monthNav, ["keyup", "increment"], d),
              f(n.daysContainer, "click", K));
            if (
              void 0 !== n.timeContainer &&
              void 0 !== n.minuteElement &&
              void 0 !== n.hourElement
            ) {
              var t = function (e) {
                return getEventTarget(e).select();
              };
              f(n.timeContainer, ["increment"], r),
                f(n.timeContainer, "blur", r, { capture: !0 }),
                f(n.timeContainer, "click", g),
                f([n.hourElement, n.minuteElement], ["focus", "click"], t),
                void 0 !== n.secondElement &&
                  f(n.secondElement, "focus", function () {
                    return n.secondElement && n.secondElement.select();
                  }),
                void 0 !== n.amPM &&
                  f(n.amPM, "click", function (e) {
                    r(e);
                  });
            }
            n.config.allowInput && f(n._input, "blur", A);
          })(),
          (n.selectedDates.length || n.config.noCalendar) &&
            (n.config.enableTime &&
              c(n.config.noCalendar ? n.latestSelectedDateObj : void 0),
            Z(!1)),
          o();
        var a = /^((?!chrome|android).)*safari/i.test(navigator.userAgent);
        !n.isMobile && a && R(), Q("onReady");
      })(),
      n
    );
  }
  function _flatpickr(e, t) {
    for (
      var n = Array.prototype.slice.call(e).filter(function (e) {
          return e instanceof HTMLElement;
        }),
        a = [],
        i = 0;
      i < n.length;
      i++
    ) {
      var o = n[i];
      try {
        if (null !== o.getAttribute("data-fp-omit")) continue;
        void 0 !== o._flatpickr &&
          (o._flatpickr.destroy(), (o._flatpickr = void 0)),
          (o._flatpickr = FlatpickrInstance(o, t || {})),
          a.push(o._flatpickr);
      } catch (e) {
        console.error(e);
      }
    }
    return 1 === a.length ? a[0] : a;
  }
  "undefined" != typeof HTMLElement &&
    "undefined" != typeof HTMLCollection &&
    "undefined" != typeof NodeList &&
    ((HTMLCollection.prototype.flatpickr = NodeList.prototype.flatpickr =
      function (e) {
        return _flatpickr(this, e);
      }),
    (HTMLElement.prototype.flatpickr = function (e) {
      return _flatpickr([this], e);
    }));
  var flatpickr = function (e, t) {
    return "string" == typeof e
      ? _flatpickr(window.document.querySelectorAll(e), t)
      : e instanceof Node
      ? _flatpickr([e], t)
      : _flatpickr(e, t);
  };
  (flatpickr.defaultConfig = {}),
    (flatpickr.l10ns = {
      en: __assign({}, english),
      default: __assign({}, english),
    }),
    (flatpickr.localize = function (e) {
      flatpickr.l10ns.default = __assign(
        __assign({}, flatpickr.l10ns.default),
        e
      );
    }),
    (flatpickr.setDefaults = function (e) {
      flatpickr.defaultConfig = __assign(
        __assign({}, flatpickr.defaultConfig),
        e
      );
    }),
    (flatpickr.parseDate = createDateParser({})),
    (flatpickr.formatDate = createDateFormatter({})),
    (flatpickr.compareDates = compareDates),
    "undefined" != typeof jQuery &&
      void 0 !== jQuery.fn &&
      (jQuery.fn.flatpickr = function (e) {
        return _flatpickr(this, e);
      }),
    (Date.prototype.fp_incr = function (e) {
      return new Date(
        this.getFullYear(),
        this.getMonth(),
        this.getDate() + ("string" == typeof e ? parseInt(e, 10) : e)
      );
    }),
    "undefined" != typeof window && (window.flatpickr = flatpickr);

  const flatpickrInit = () => {
    document.querySelectorAll(".datetimepicker").forEach((e) => {
      const t = getData(e, "options");
      flatpickr(e, {
        nextArrow:
          '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">\x3c!--! Font Awesome Pro 6.1.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --\x3e<path d="M96 480c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L242.8 256L73.38 86.63c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l192 192c12.5 12.5 12.5 32.75 0 45.25l-192 192C112.4 476.9 104.2 480 96 480z"/></svg>',
        prevArrow:
          '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">\x3c!--! Font Awesome Pro 6.1.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --\x3e<path d="M224 480c-8.188 0-16.38-3.125-22.62-9.375l-192-192c-12.5-12.5-12.5-32.75 0-45.25l192-192c12.5-12.5 32.75-12.5 45.25 0s12.5 32.75 0 45.25L77.25 256l169.4 169.4c12.5 12.5 12.5 32.75 0 45.25C240.4 476.9 232.2 480 224 480z"/></svg>',
        locale: {
          firstDayOfWeek: 0,
          shorthand: ["S", "M", "T", "W", "T", "F", "S"],
        },
        monthSelectorType: "static",
        onDayCreate: (e, t, o, c) => {
          (5 !== c.dateObj.getDay() && 6 !== c.dateObj.getDay()) ||
            (c.className += " weekend-days");
        },
        ...t,
      });
    });
  };

  const detectorInit = () => {
    const { is: a } = window,
      s = document.querySelector("html");
    a.opera() && addClass(s, "opera"),
      a.mobile() && addClass(s, "mobile"),
      a.firefox() && addClass(s, "firefox"),
      a.safari() && addClass(s, "safari"),
      a.ios() && addClass(s, "ios"),
      a.iphone() && addClass(s, "iphone"),
      a.ipad() && addClass(s, "ipad"),
      a.ie() && addClass(s, "ie"),
      a.edge() && addClass(s, "edge"),
      a.chrome() && addClass(s, "chrome"),
      a.mac() && addClass(s, "osx"),
      a.windows() && addClass(s, "windows"),
      navigator.userAgent.match("CriOS") && addClass(s, "chrome");
  };

  const iconCopiedInit = () => {
    const e = document.getElementById("icon-list"),
      t = document.getElementById("icon-copied-toast"),
      o = new window.bootstrap.Toast(t);
    e &&
      e.addEventListener("click", (e) => {
        const n = e.target;
        "INPUT" === n.tagName &&
          (n.select(),
          n.setSelectionRange(0, 99999),
          document.execCommand("copy"),
          (t.querySelector(
            ".toast-body"
          ).innerHTML = `<span class="fw-black">Copied:</span>  <code>${n.value}</code>`),
          o.show());
      });
  };

  const isotopeInit = () => {
    const t = ".isotope-item",
      e = "[data-sl-isotope]",
      o = "[data-filter]",
      i = "[data-filter-nav]",
      l = "sl-isotope",
      r = "active";
    if (window.Isotope) {
      const s = document.querySelectorAll(e);
      s.length &&
        s.forEach((e) => {
          window.imagesLoaded(e, () => {
            e.querySelectorAll(t).forEach((t) => {
              t.style.visibility = "visible";
            });
            const s = utils.getData(e, l),
              a = { itemSelector: t, layoutMode: "packery" },
              c = window._.merge(a, s),
              n = new window.Isotope(e, c);
            return (
              document
                .querySelector(i)
                ?.addEventListener("click", function (t) {
                  const e = t.target.dataset.filter;
                  n.arrange({ filter: e }),
                    document.querySelectorAll(o).forEach((t) => {
                      t.classList.remove(r);
                    }),
                    t.target.classList.add(r);
                }),
              n
            );
          });
        });
    }
  };

  const bigPictureInit = () => {
    if (window.BigPicture) {
      document.querySelectorAll("[data-bigpicture]").forEach((e) => {
        const t = getData(e, "bigpicture"),
          i = { el: e, noLoader: !0, allowfullscreen: !0 },
          r = window._.merge(i, t);
        e.addEventListener("click", () => {
          window.BigPicture(r);
        });
      });
    }
  };

  const countupInit = () => {
    if (window.countUp) {
      document.querySelectorAll("[data-countup]").forEach((t) => {
        const { endValue: o, ...u } = utils.getData(t, "countup"),
          n = new window.countUp.CountUp(t, o, { duration: 4, ...u });
        n.error ? console.error(n.error) : n.start();
      });
    }
  };

  function initMap() {
    const e = document.querySelectorAll(".googlemap");
    if (e.length && window.google) {
      const t = {
        Default: [
          {
            featureType: "water",
            elementType: "geometry",
            stylers: [{ color: "#e9e9e9" }, { lightness: 17 }],
          },
          {
            featureType: "landscape",
            elementType: "geometry",
            stylers: [{ color: "#f5f5f5" }, { lightness: 20 }],
          },
          {
            featureType: "road.highway",
            elementType: "geometry.fill",
            stylers: [{ color: "#ffffff" }, { lightness: 17 }],
          },
          {
            featureType: "road.highway",
            elementType: "geometry.stroke",
            stylers: [{ color: "#ffffff" }, { lightness: 29 }, { weight: 0.2 }],
          },
          {
            featureType: "road.arterial",
            elementType: "geometry",
            stylers: [{ color: "#ffffff" }, { lightness: 18 }],
          },
          {
            featureType: "road.local",
            elementType: "geometry",
            stylers: [{ color: "#ffffff" }, { lightness: 16 }],
          },
          {
            featureType: "poi",
            elementType: "geometry",
            stylers: [{ color: "#f5f5f5" }, { lightness: 21 }],
          },
          {
            featureType: "poi.park",
            elementType: "geometry",
            stylers: [{ color: "#dedede" }, { lightness: 21 }],
          },
          {
            elementType: "labels.text.stroke",
            stylers: [
              { visibility: "on" },
              { color: "#ffffff" },
              { lightness: 16 },
            ],
          },
          {
            elementType: "labels.text.fill",
            stylers: [
              { saturation: 36 },
              { color: "#333333" },
              { lightness: 40 },
            ],
          },
          { elementType: "labels.icon", stylers: [{ visibility: "off" }] },
          {
            featureType: "transit",
            elementType: "geometry",
            stylers: [{ color: "#f2f2f2" }, { lightness: 19 }],
          },
          {
            featureType: "administrative",
            elementType: "geometry.fill",
            stylers: [{ color: "#fefefe" }, { lightness: 20 }],
          },
          {
            featureType: "administrative",
            elementType: "geometry.stroke",
            stylers: [{ color: "#fefefe" }, { lightness: 17 }, { weight: 1.2 }],
          },
        ],
        Gray: [
          {
            featureType: "all",
            elementType: "labels.text.fill",
            stylers: [
              { saturation: 36 },
              { color: "#000000" },
              { lightness: 40 },
            ],
          },
          {
            featureType: "all",
            elementType: "labels.text.stroke",
            stylers: [
              { visibility: "on" },
              { color: "#000000" },
              { lightness: 16 },
            ],
          },
          {
            featureType: "all",
            elementType: "labels.icon",
            stylers: [{ visibility: "off" }],
          },
          {
            featureType: "administrative",
            elementType: "geometry.fill",
            stylers: [{ color: "#000000" }, { lightness: 20 }],
          },
          {
            featureType: "administrative",
            elementType: "geometry.stroke",
            stylers: [{ color: "#000000" }, { lightness: 17 }, { weight: 1.2 }],
          },
          {
            featureType: "landscape",
            elementType: "geometry",
            stylers: [{ color: "#000000" }, { lightness: 20 }],
          },
          {
            featureType: "poi",
            elementType: "geometry",
            stylers: [{ color: "#000000" }, { lightness: 21 }],
          },
          {
            featureType: "road.highway",
            elementType: "geometry.fill",
            stylers: [{ color: "#000000" }, { lightness: 17 }],
          },
          {
            featureType: "road.highway",
            elementType: "geometry.stroke",
            stylers: [{ color: "#000000" }, { lightness: 29 }, { weight: 0.2 }],
          },
          {
            featureType: "road.arterial",
            elementType: "geometry",
            stylers: [{ color: "#000000" }, { lightness: 18 }],
          },
          {
            featureType: "road.local",
            elementType: "geometry",
            stylers: [{ color: "#000000" }, { lightness: 16 }],
          },
          {
            featureType: "transit",
            elementType: "geometry",
            stylers: [{ color: "#000000" }, { lightness: 19 }],
          },
          {
            featureType: "water",
            elementType: "geometry",
            stylers: [{ color: "#000000" }, { lightness: 17 }],
          },
        ],
        Midnight: [
          {
            featureType: "all",
            elementType: "labels.text.fill",
            stylers: [{ color: "#ffffff" }],
          },
          {
            featureType: "all",
            elementType: "labels.text.stroke",
            stylers: [{ color: "#000000" }, { lightness: 13 }],
          },
          {
            featureType: "administrative",
            elementType: "geometry.fill",
            stylers: [{ color: "#000000" }],
          },
          {
            featureType: "administrative",
            elementType: "geometry.stroke",
            stylers: [{ color: "#144b53" }, { lightness: 14 }, { weight: 1.4 }],
          },
          {
            featureType: "landscape",
            elementType: "all",
            stylers: [{ color: "#08304b" }],
          },
          {
            featureType: "poi",
            elementType: "geometry",
            stylers: [{ color: "#0c4152" }, { lightness: 5 }],
          },
          {
            featureType: "road.highway",
            elementType: "geometry.fill",
            stylers: [{ color: "#000000" }],
          },
          {
            featureType: "road.highway",
            elementType: "geometry.stroke",
            stylers: [{ color: "#0b434f" }, { lightness: 25 }],
          },
          {
            featureType: "road.arterial",
            elementType: "geometry.fill",
            stylers: [{ color: "#000000" }],
          },
          {
            featureType: "road.arterial",
            elementType: "geometry.stroke",
            stylers: [{ color: "#0b3d51" }, { lightness: 16 }],
          },
          {
            featureType: "road.local",
            elementType: "geometry",
            stylers: [{ color: "#000000" }],
          },
          {
            featureType: "transit",
            elementType: "all",
            stylers: [{ color: "#146474" }],
          },
          {
            featureType: "water",
            elementType: "all",
            stylers: [{ color: "#021019" }],
          },
        ],
        Hopper: [
          {
            featureType: "water",
            elementType: "geometry",
            stylers: [
              { hue: "#165c64" },
              { saturation: 34 },
              { lightness: -69 },
              { visibility: "on" },
            ],
          },
          {
            featureType: "landscape",
            elementType: "geometry",
            stylers: [
              { hue: "#b7caaa" },
              { saturation: -14 },
              { lightness: -18 },
              { visibility: "on" },
            ],
          },
          {
            featureType: "landscape.man_made",
            elementType: "all",
            stylers: [
              { hue: "#cbdac1" },
              { saturation: -6 },
              { lightness: -9 },
              { visibility: "on" },
            ],
          },
          {
            featureType: "road",
            elementType: "geometry",
            stylers: [
              { hue: "#8d9b83" },
              { saturation: -89 },
              { lightness: -12 },
              { visibility: "on" },
            ],
          },
          {
            featureType: "road.highway",
            elementType: "geometry",
            stylers: [
              { hue: "#d4dad0" },
              { saturation: -88 },
              { lightness: 54 },
              { visibility: "simplified" },
            ],
          },
          {
            featureType: "road.arterial",
            elementType: "geometry",
            stylers: [
              { hue: "#bdc5b6" },
              { saturation: -89 },
              { lightness: -3 },
              { visibility: "simplified" },
            ],
          },
          {
            featureType: "road.local",
            elementType: "geometry",
            stylers: [
              { hue: "#bdc5b6" },
              { saturation: -89 },
              { lightness: -26 },
              { visibility: "on" },
            ],
          },
          {
            featureType: "poi",
            elementType: "geometry",
            stylers: [
              { hue: "#c17118" },
              { saturation: 61 },
              { lightness: -45 },
              { visibility: "on" },
            ],
          },
          {
            featureType: "poi.park",
            elementType: "all",
            stylers: [
              { hue: "#8ba975" },
              { saturation: -46 },
              { lightness: -28 },
              { visibility: "on" },
            ],
          },
          {
            featureType: "transit",
            elementType: "geometry",
            stylers: [
              { hue: "#a43218" },
              { saturation: 74 },
              { lightness: -51 },
              { visibility: "simplified" },
            ],
          },
          {
            featureType: "administrative.province",
            elementType: "all",
            stylers: [
              { hue: "#ffffff" },
              { saturation: 0 },
              { lightness: 100 },
              { visibility: "simplified" },
            ],
          },
          {
            featureType: "administrative.neighborhood",
            elementType: "all",
            stylers: [
              { hue: "#ffffff" },
              { saturation: 0 },
              { lightness: 100 },
              { visibility: "off" },
            ],
          },
          {
            featureType: "administrative.locality",
            elementType: "labels",
            stylers: [
              { hue: "#ffffff" },
              { saturation: 0 },
              { lightness: 100 },
              { visibility: "off" },
            ],
          },
          {
            featureType: "administrative.land_parcel",
            elementType: "all",
            stylers: [
              { hue: "#ffffff" },
              { saturation: 0 },
              { lightness: 100 },
              { visibility: "off" },
            ],
          },
          {
            featureType: "administrative",
            elementType: "all",
            stylers: [
              { hue: "#3a3935" },
              { saturation: 5 },
              { lightness: -57 },
              { visibility: "off" },
            ],
          },
          {
            featureType: "poi.medical",
            elementType: "geometry",
            stylers: [
              { hue: "#cba923" },
              { saturation: 50 },
              { lightness: -46 },
              { visibility: "on" },
            ],
          },
        ],
        Beard: [
          {
            featureType: "poi.business",
            elementType: "labels.text",
            stylers: [{ visibility: "on" }, { color: "#333333" }],
          },
        ],
        AssassianCreed: [
          {
            featureType: "all",
            elementType: "all",
            stylers: [{ visibility: "on" }],
          },
          {
            featureType: "all",
            elementType: "labels",
            stylers: [{ visibility: "off" }, { saturation: "-100" }],
          },
          {
            featureType: "all",
            elementType: "labels.text.fill",
            stylers: [
              { saturation: 36 },
              { color: "#000000" },
              { lightness: 40 },
              { visibility: "off" },
            ],
          },
          {
            featureType: "all",
            elementType: "labels.text.stroke",
            stylers: [
              { visibility: "off" },
              { color: "#000000" },
              { lightness: 16 },
            ],
          },
          {
            featureType: "all",
            elementType: "labels.icon",
            stylers: [{ visibility: "off" }],
          },
          {
            featureType: "administrative",
            elementType: "geometry.fill",
            stylers: [{ color: "#000000" }, { lightness: 20 }],
          },
          {
            featureType: "administrative",
            elementType: "geometry.stroke",
            stylers: [{ color: "#000000" }, { lightness: 17 }, { weight: 1.2 }],
          },
          {
            featureType: "landscape",
            elementType: "geometry",
            stylers: [{ color: "#000000" }, { lightness: 20 }],
          },
          {
            featureType: "landscape",
            elementType: "geometry.fill",
            stylers: [{ color: "#4d6059" }],
          },
          {
            featureType: "landscape",
            elementType: "geometry.stroke",
            stylers: [{ color: "#4d6059" }],
          },
          {
            featureType: "landscape.natural",
            elementType: "geometry.fill",
            stylers: [{ color: "#4d6059" }],
          },
          {
            featureType: "poi",
            elementType: "geometry",
            stylers: [{ lightness: 21 }],
          },
          {
            featureType: "poi",
            elementType: "geometry.fill",
            stylers: [{ color: "#4d6059" }],
          },
          {
            featureType: "poi",
            elementType: "geometry.stroke",
            stylers: [{ color: "#4d6059" }],
          },
          {
            featureType: "road",
            elementType: "geometry",
            stylers: [{ visibility: "on" }, { color: "#7f8d89" }],
          },
          {
            featureType: "road",
            elementType: "geometry.fill",
            stylers: [{ color: "#7f8d89" }],
          },
          {
            featureType: "road.highway",
            elementType: "geometry.fill",
            stylers: [{ color: "#7f8d89" }, { lightness: 17 }],
          },
          {
            featureType: "road.highway",
            elementType: "geometry.stroke",
            stylers: [{ color: "#7f8d89" }, { lightness: 29 }, { weight: 0.2 }],
          },
          {
            featureType: "road.arterial",
            elementType: "geometry",
            stylers: [{ color: "#000000" }, { lightness: 18 }],
          },
          {
            featureType: "road.arterial",
            elementType: "geometry.fill",
            stylers: [{ color: "#7f8d89" }],
          },
          {
            featureType: "road.arterial",
            elementType: "geometry.stroke",
            stylers: [{ color: "#7f8d89" }],
          },
          {
            featureType: "road.local",
            elementType: "geometry",
            stylers: [{ color: "#000000" }, { lightness: 16 }],
          },
          {
            featureType: "road.local",
            elementType: "geometry.fill",
            stylers: [{ color: "#7f8d89" }],
          },
          {
            featureType: "road.local",
            elementType: "geometry.stroke",
            stylers: [{ color: "#7f8d89" }],
          },
          {
            featureType: "transit",
            elementType: "geometry",
            stylers: [{ color: "#000000" }, { lightness: 19 }],
          },
          {
            featureType: "water",
            elementType: "all",
            stylers: [{ color: "#2b3638" }, { visibility: "on" }],
          },
          {
            featureType: "water",
            elementType: "geometry",
            stylers: [{ color: "#2b3638" }, { lightness: 17 }],
          },
          {
            featureType: "water",
            elementType: "geometry.fill",
            stylers: [{ color: "#24282b" }],
          },
          {
            featureType: "water",
            elementType: "geometry.stroke",
            stylers: [{ color: "#24282b" }],
          },
          {
            featureType: "water",
            elementType: "labels",
            stylers: [{ visibility: "off" }],
          },
          {
            featureType: "water",
            elementType: "labels.text",
            stylers: [{ visibility: "off " }],
          },
          {
            featureType: "water",
            elementType: "labels.text.fill",
            stylers: [{ visibility: "off" }],
          },
          {
            featureType: "water",
            elementType: "labels.text.stroke",
            stylers: [{ visibility: "off" }],
          },
          {
            featureType: "water",
            elementType: "labels.icon",
            stylers: [{ visibility: "off" }],
          },
        ],
        SubtleGray: [
          {
            featureType: "administrative",
            elementType: "all",
            stylers: [{ saturation: "-100" }],
          },
          {
            featureType: "administrative.province",
            elementType: "all",
            stylers: [{ visibility: "off" }],
          },
          {
            featureType: "landscape",
            elementType: "all",
            stylers: [
              { saturation: -100 },
              { lightness: 65 },
              { visibility: "on" },
            ],
          },
          {
            featureType: "poi",
            elementType: "all",
            stylers: [
              { saturation: -100 },
              { lightness: "50" },
              { visibility: "simplified" },
            ],
          },
          {
            featureType: "road",
            elementType: "all",
            stylers: [{ saturation: -100 }],
          },
          {
            featureType: "road.highway",
            elementType: "all",
            stylers: [{ visibility: "simplified" }],
          },
          {
            featureType: "road.arterial",
            elementType: "all",
            stylers: [{ lightness: "30" }],
          },
          {
            featureType: "road.local",
            elementType: "all",
            stylers: [{ lightness: "40" }],
          },
          {
            featureType: "transit",
            elementType: "all",
            stylers: [{ saturation: -100 }, { visibility: "simplified" }],
          },
          {
            featureType: "water",
            elementType: "geometry",
            stylers: [
              { hue: "#ffff00" },
              { lightness: -25 },
              { saturation: -97 },
            ],
          },
          {
            featureType: "water",
            elementType: "labels",
            stylers: [{ lightness: -25 }, { saturation: -100 }],
          },
        ],
        Tripitty: [
          {
            featureType: "all",
            elementType: "labels",
            stylers: [{ visibility: "off" }],
          },
          {
            featureType: "administrative",
            elementType: "all",
            stylers: [{ visibility: "off" }],
          },
          {
            featureType: "landscape",
            elementType: "all",
            stylers: [{ color: "#2c5ca5" }],
          },
          {
            featureType: "poi",
            elementType: "all",
            stylers: [{ color: "#2c5ca5" }],
          },
          {
            featureType: "road",
            elementType: "all",
            stylers: [{ visibility: "off" }],
          },
          {
            featureType: "transit",
            elementType: "all",
            stylers: [{ visibility: "off" }],
          },
          {
            featureType: "water",
            elementType: "all",
            stylers: [{ color: "#193a70" }, { visibility: "on" }],
          },
        ],
        Cobalt: [
          {
            featureType: "all",
            elementType: "all",
            stylers: [
              { invert_lightness: !0 },
              { saturation: 10 },
              { lightness: 30 },
              { gamma: 0.5 },
              { hue: "#435158" },
            ],
          },
        ],
        Snazzy: [
          {
            featureType: "water",
            elementType: "geometry",
            stylers: [{ color: "#e9e9e9" }, { lightness: 17 }],
          },
          {
            featureType: "landscape",
            elementType: "geometry",
            stylers: [{ color: "#f5f5f5" }, { lightness: 20 }],
          },
          {
            featureType: "road.highway",
            elementType: "geometry.fill",
            stylers: [{ color: "#ffffff" }, { lightness: 17 }],
          },
          {
            featureType: "road.highway",
            elementType: "geometry.stroke",
            stylers: [{ color: "#ffffff" }, { lightness: 29 }, { weight: 0.2 }],
          },
          {
            featureType: "road.arterial",
            elementType: "geometry",
            stylers: [{ color: "#ffffff" }, { lightness: 18 }],
          },
          {
            featureType: "road.local",
            elementType: "geometry",
            stylers: [{ color: "#ffffff" }, { lightness: 16 }],
          },
          {
            featureType: "poi",
            elementType: "geometry",
            stylers: [{ color: "#f5f5f5" }, { lightness: 21 }],
          },
          {
            featureType: "poi.park",
            elementType: "geometry",
            stylers: [{ color: "#dedede" }, { lightness: 21 }],
          },
          {
            elementType: "labels.text.stroke",
            stylers: [
              { visibility: "on" },
              { color: "#ffffff" },
              { lightness: 16 },
            ],
          },
          {
            elementType: "labels.text.fill",
            stylers: [
              { saturation: 36 },
              { color: "#333333" },
              { lightness: 40 },
            ],
          },
          { elementType: "labels.icon", stylers: [{ visibility: "off" }] },
          {
            featureType: "transit",
            elementType: "geometry",
            stylers: [{ color: "#f2f2f2" }, { lightness: 19 }],
          },
          {
            featureType: "administrative",
            elementType: "geometry.fill",
            stylers: [{ color: "#fefefe" }, { lightness: 20 }],
          },
          {
            featureType: "administrative",
            elementType: "geometry.stroke",
            stylers: [{ color: "#fefefe" }, { lightness: 17 }, { weight: 1.2 }],
          },
        ],
      };
      e.forEach((e) => {
        const l = getData(e, "latlng").split(","),
          s = e.innerHTML,
          r = getData(e, "icon")
            ? getData(e, "icon")
            : "https://maps.gstatic.com/mapfiles/api-3/images/spotlight-poi.png",
          y = getData(e, "zoom"),
          i = e,
          a = getData(e, "theme");
        if ("streetview" === getData(e, "theme")) {
          const t = getData(e, "pov"),
            s = {
              position: { lat: Number(l[0]), lng: Number(l[1]) },
              pov: t,
              zoom: y,
              gestureHandling: "none",
              scrollwheel: !1,
            };
          return new window.google.maps.StreetViewPanorama(i, s);
        }
        const o = {
            zoom: y,
            scrollwheel: getData(e, "scrollwheel"),
            disableDefaultUI: !0,
            center: new window.google.maps.LatLng(l[0], l[1]),
            styles: "dark" === localStorage.getItem("theme") ? t.Cobalt : t[a],
          },
          n = new window.google.maps.Map(i, o),
          f = new window.google.maps.InfoWindow({ content: s }),
          p = new window.google.maps.Marker({
            position: new window.google.maps.LatLng(l[0], l[1]),
            icon: r,
            map: n,
          });
        return (
          p.addListener("click", () => {
            f.open(n, p);
          }),
          null
        );
      });
    }
  }

  const todoOffcanvasInit = () => {
    const o = document.querySelectorAll("[data-event-propagation-prevent]");
    o &&
      o.forEach((o) => {
        o.addEventListener("click", (o) => {
          console.log("sjhcudsbc"), o.stopPropagation();
        });
      });
    const t = document.querySelector(".todo-list");
    if (t) {
      t.querySelectorAll("[data-todo-offcanvas-toogle]").forEach((o) => {
        const e = getData(o, "todo-offcanvas-target"),
          a = t.querySelector(`#${e}`),
          c = new window.bootstrap.Offcanvas(a, { backdrop: !0 });
        o.addEventListener("click", () => {
          c.show();
        });
      });
    }
  };

  const wizardInit = () => {
    const e = {
        WIZARDS: "[data-theme-wizard]",
        TOGGLE_BUTTON_EL: "[data-wizard-step]",
        FORMS: "[data-wizard-form]",
        PASSWORD_INPUT: "[data-wizard-password]",
        CONFIRM_PASSWORD_INPUT: "[data-wizard-confirm-password]",
        NEXT_BTN: "[data-wizard-next-btn]",
        PREV_BTN: "[data-wizard-prev-btn]",
        FOOTER: "[data-wizard-footer]",
      },
      t = "submit",
      a = "show.bs.tab",
      r = "shown.bs.tab",
      s = "click";
    document.querySelectorAll(e.WIZARDS).forEach((d) => {
      const o = d.querySelectorAll(e.TOGGLE_BUTTON_EL),
        l = d.querySelectorAll(e.FORMS),
        n = d.querySelector(e.passwordInput),
        i = d.querySelector(e.CONFIRM_PASSWORD_INPUT),
        c = d.querySelector(e.NEXT_BTN),
        u = d.querySelector(e.PREV_BTN),
        w = d.querySelector(e.FOOTER),
        E = new Event(t, { bubbles: !0, cancelable: !0 }),
        m = Array.from(o).map((e) =>
          window.bootstrap.Tab.getOrCreateInstance(e)
        );
      let v = 0,
        L = null;
      l.forEach((e) => {
        e.addEventListener(
          t,
          (t) => (
            t.preventDefault(),
            e.classList.contains("needs-validation") &&
            (n &&
              i &&
              (n.value !== i.value
                ? i.setCustomValidity("Invalid field.")
                : i.setCustomValidity("")),
            !e.checkValidity())
              ? (L.preventDefault(), !1)
              : ((v += 1), null)
          )
        );
      }),
        c.addEventListener(s, () => {
          m[v + 1].show();
        }),
        u.addEventListener(s, () => {
          (v -= 1), m[v].show();
        }),
        o.length &&
          o.forEach((e, t) => {
            e.addEventListener(a, (t) => {
              const a = getData(e, "wizard-step");
              (L = t), a > v && l[v].dispatchEvent(E);
            }),
              e.addEventListener(r, () => {
                (v = t),
                  v === o.length - 1 &&
                    o.forEach((e) => {
                      e.setAttribute("data-bs-toggle", "modal"),
                        e.setAttribute("data-bs-target", "#error-modal");
                    });
                for (let e = 0; e < v; e += 1)
                  o[e].classList.add("done"),
                    e > 0 && o[e - 1].classList.add("complete");
                for (let e = v; e < o.length; e += 1)
                  o[e].classList.remove("done"),
                    e > 0 && o[e - 1].classList.remove("complete");
                v > o.length - 2
                  ? w.classList.add("d-none")
                  : w.classList.remove("d-none"),
                  v > 0
                    ? u.classList.remove("d-none")
                    : u.classList.add("d-none");
              });
          });
    });
  };

  const glightboxInit = () => {
    window.GLightbox && window.GLightbox({ selector: "[data-gallery]" });
  };

  (window.initMap = initMap),
    docReady(detectorInit),
    docReady(toastInit),
    docReady(tooltipInit),
    docReady(featherIconsInit),
    docReady(basicEchartsInit),
    docReady(listInit),
    docReady(anchorJSInit),
    docReady(popoverInit),
    docReady(fromValidationInit),
    docReady(docComponentInit),
    docReady(swiperInit),
    docReady(productDetailsInit),
    docReady(ratingInit),
    docReady(quantityInit),
    docReady(dropzoneInit),
    docReady(choicesInit),
    docReady(tinymceInit),
    docReady(responsiveNavItemsInit),
    docReady(zeroRoadmapChartInit),
    docReady(flatpickrInit),
    docReady(iconCopiedInit),
    docReady(isotopeInit),
    docReady(bigPictureInit),
    docReady(countupInit),
    docReady(phoenixOffcanvasInit),
    docReady(todoOffcanvasInit),
    docReady(wizardInit),
    docReady(glightboxInit);
});
//# sourceMappingURL=phoenix.js.map
