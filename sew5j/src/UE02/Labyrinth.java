package UE02;

import java.lang.reflect.Parameter;
import java.util.*;
import java.util.stream.Collectors;

/** Author: Nik Sauer
 *
 */

public class Labyrinth {
    public static String[][] maps = {{
            "############",
            "#  #     # #",
            "## # ### # #",
            "#  # # # # #",
            "## ### # # #",
            "#        # #",
            "## ####### #",
            "#          #",
            "# ######## #",
            "# #   #    #",
            "#   #   # ##",
            "######A#####"
    }, {
            "################################",
            "#                              #",
            "# ############################ #",
            "# # ###       ##  #          # #",
            "# #     ##### ### # ########## #",
            "# #   ##### #     # #      ### #",
            "# # ##### #   ###   # # ## # # #",
            "# # ### # ## ######## # ##   # #",
            "# ##### #  # #   #    #    ### #",
            "# # ### ## # # # # ####### # # #",
            "# #        # #   #     #     # #",
            "# ######## # ######### # ### # #",
            "# ####     #  # #   #  # ##### #",
            "# # #### #### # # # # ## # ### #",
            "#                      # #     #",
            "###########################A####"
    }, {
            "###########################A####",
            "#   #      ## # # ###  #     # #",
            "# ###### #### # # #### ##### # #",
            "# # ###  ## # # # #          # #",
            "# # ### ### # # # # # #### # # #",
            "# #     ### # # # # # ## # # # #",
            "# # # # ### # # # # ######## # #",
            "# # # #     #          #     # #",
            "# ### ################ # # # # #",
            "# #   #             ## # #   # #",
            "# # #### ############# # #   # #",
            "# #                    #     # #",
            "# # #################### # # # #",
            "# # #### #           ###     # #",
            "# # ## # ### ### ### ### # ### #",
            "# #    #     ##  ##  # ###   # #",
            "# ####   ###### #### # ###  ## #",
            "###########################A####"
    }, {
            "#############",
            "#           #",
            "#           #",
            "#           #",
            "###########A#"
    }};

    /**
     * Wandelt (unveränderliche) Strings in Char-Arrays
     * @param map  der Plan, ein String je Zeile
     * @return char[][] des Plans
     */
    public static char[][] fromStrings(String[] map) {
        int R = map.length, C = map[0].length();
        char[][] g = new char[R][];
        for(int i=0; i<R; i++){
            g[i]=map[i].toCharArray();
        }
        return g;
    }

    /**
     * Ausgabe des Layrinths
     * @param lab
     */
    public static void printLabyrinth(char[][] lab) {
        for (int i = 0; i < lab.length; i++) {
            System.out.println(lab[i]);
        }
    }
    record Pair(int a, int b){};
    /**
     * Suche den Weg
     * @param r     aktuelle Position
     * @param c     aktuelle Position
     * @param lab
     * @throws InterruptedException    für die verlangsamte Ausgabe mit sleep()
     */
    public static boolean suchen(int r, int c, char[][] lab) throws InterruptedException {
        int R = lab.length, C = lab[0].length;
        boolean[][] vis = new boolean[R][C];

        Deque<Pair> q = new ArrayDeque<>();
        q.push(new Pair(r, c));

        while (!q.isEmpty()){
            Pair p = q.pollFirst();
            if(vis[p.a][p.b] || lab[p.a][p.b]=='#')
                continue;

            if(lab[p.a][p.b]=='A')
                return true;

            vis[p.a][p.b] = true;

            q.push(new Pair(p.a + 1, p.b));
            q.push(new Pair(p.a - 1, p.b));
            q.push(new Pair(p.a , p.b + 1));
            q.push(new Pair(p.a, p.b - 1));
        }
        return false;
    }

    public static int dfs(int r, int c, char[][] g, boolean[][] vis){
        if(vis[r][c] || g[r][c]=='#')
            return 0;
        if(g[r][c]=='A')
            return 1;
        vis[r][c] = true;
        int ret = dfs(r + 1, c, g, vis) + dfs(r - 1, c, g, vis) + dfs(r, c + 1, g, vis) + dfs(r, c - 1, g, vis);
        vis[r][c] = false;
        return  ret;
    }

    public static void main(String[] args) throws InterruptedException {
        long t = System.currentTimeMillis();
        char[][] labyrinth = fromStrings(maps[3]);
        //printLabyrinth(labyrinth);
        //System.out.println(suchen(1, 1, labyrinth));
        System.out.println(dfs(1, 1, labyrinth, new boolean[labyrinth.length][labyrinth[0].length]));

        System.out.println((System.currentTimeMillis() - t) + "ms");
    }
}