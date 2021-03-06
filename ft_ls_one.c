/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ls_one.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tbouder <tbouder@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/10/19 19:35:33 by tbouder           #+#    #+#             */
/*   Updated: 2016/11/20 22:30:01 by tbouder          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_ls.h"

void		ft_ls_one(t_env env, t_list *list)
{
	t_file_data	*data;

	while (list)
	{
		data = ((t_file_data *)list->content);
		if (ft_check_access(env, data->filename))
		{
			list = list->next;
			continue ;
		}
		ft_print_color(env, data);
		ft_putchar('\n');
		list = list->next;
	}
}
